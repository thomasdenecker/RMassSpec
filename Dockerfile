FROM rocker/geospatial
MAINTAINER Thomas DENECKER (thomas.denecker@gmail.com)

RUN mkdir -p /config/etc && mv /etc/timezone /config/etc/ && ln -s /config/etc/timezone /etc/
RUN dpkg-reconfigure -f noninteractive tzdata
RUN echo "Europe/Paris" > /config/etc/timezone
