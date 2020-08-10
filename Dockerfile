FROM golang
WORKDIR /
RUN wget -O /easydarwin.tar.gz  https://github.com/EasyDarwin/EasyDarwin/releases/download/v8.1.0/EasyDarwin-linux-8.1.0-1901141151.tar.gz &&\
	tar xf easydarwin.tar.gz &&\
        rm -rf /easydarwin.tar.gz &&\
	mv Easy* easydarwin
WORKDIR /easydarwin
expose 554 554/udp 10008
CMD ["./easydarwin"]
