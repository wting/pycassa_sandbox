FROM cassandra:2.1
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
	&& apt-get install -y --no-install-recommends \
        net-tools \
        python-dev \
        python-pip

RUN pip install pycassa ipython

CMD ["/bin/bash"]
