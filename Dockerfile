From debian:latest
RUN apt-get update && apt-get upgrade -y && apt-get install git nano wget python3 -y && cd /bin && echo wget https://raw.githubusercontent.com/unknowndonthacker/fakedns/main/fakedns.py>>fakedns && echo wget https://raw.githubusercontent.com/unknowndonthacker/fakedns/main/remote.conf>>fakedns && echo python3 fakedns.py --non-authoritative -c remote.conf>>fakedns && chmod +x /bin/fakedns
COPY $PWD/fakedns.py /fakedns/
COPY $PWD/remote.conf /fakedns/
CMD bash