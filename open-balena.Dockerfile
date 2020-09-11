FROM ubuntu:18.04
RUN apt-get update && apt-get install -y build-essential git
RUN adduser balena
RUN usermod -aG sudo balena
RUN apt-get install docker.io
RUN usermod -aG docker balena
RUN curl -L https://github.com/docker/compose/releases/download/1.24.0/docker-compose-Linux-x86_64 -o /usr/local/bin/docker-compose
RUN chmod +x /usr/local/bin/docker-compose
RUN docker-compose --version
# RUN apt-get install libssl-dev nodejs npm
ENTRYPOINT ["/bin/sh"]
