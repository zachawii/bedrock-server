FROM ubuntu:latest

RUN \
apt-get update && \
apt-get dist-upgrade && \
apt-get install -y unzip curl libcurl4 libssl1.0.0 && \
curl https://minecraft.azureedge.net/bin-linux/bedrock-server-1.8.1.2.zip -o bedrock.zip && \
unzip bedrock.zip -d bedrock && \
rm bedrock.zip

WORKDIR /bedrock

ENV LD_LIBRARY_PATH=.

CMD ./bedrock_server
