FROM ubuntu:14.04
MAINTAINER "kimmanjin <majkim@sgacorp.kr>"
LABEL "purpose"="practice"
RUN apt-get update
RUN apt-get install apache2 -yINTAINER "kimmanjin <majkim@sgacorp.kr>"
LABEL "purpose"="practice"
RUN apt-get update
RUN apt-get install apache2 -y
#ADD ./test.html /var/www/html
COPY ./test.html /var/www/html
WORKDIR /var/www/html
RUN ["/bin/bash", "-c", "echo hello >> test.html"]
EXPOSE 80
CMD apachectl -D FOREGROUND
