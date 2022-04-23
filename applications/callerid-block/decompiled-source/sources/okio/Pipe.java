package okio;

import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:okio/Pipe.class */
public final class Pipe {
    final long maxBufferSize;
    boolean sinkClosed;
    boolean sourceClosed;
    final Buffer buffer = new Buffer();
    private final Sink sink = new PipeSink();
    private final Source source = new PipeSource();

    /* loaded from: classes2-dex2jar.jar:okio/Pipe$PipeSink.class */
    final class PipeSink implements Sink {
        final Timeout timeout = new Timeout();

        PipeSink() {
        }

        public void close() {
            synchronized (Pipe.this.buffer) {
                Pipe pipe = Pipe.this;
                if (!pipe.sinkClosed) {
                    if (pipe.sourceClosed && pipe.buffer.size() > 0) {
                        throw new IOException("source is closed");
                    }
                    Pipe pipe2 = Pipe.this;
                    pipe2.sinkClosed = true;
                    pipe2.buffer.notifyAll();
                }
            }
        }

        public void flush() {
            synchronized (Pipe.this.buffer) {
                Pipe pipe = Pipe.this;
                if (pipe.sinkClosed) {
                    throw new IllegalStateException("closed");
                } else if (pipe.sourceClosed && pipe.buffer.size() > 0) {
                    throw new IOException("source is closed");
                }
            }
        }

        public Timeout timeout() {
            return this.timeout;
        }

        public void write(Buffer buffer, long j) {
            synchronized (Pipe.this.buffer) {
                try {
                    if (!Pipe.this.sinkClosed) {
                        while (j > 0) {
                            Pipe pipe = Pipe.this;
                            if (!pipe.sourceClosed) {
                                long size = pipe.maxBufferSize - pipe.buffer.size();
                                if (size == 0) {
                                    this.timeout.waitUntilNotified(Pipe.this.buffer);
                                } else {
                                    long min = Math.min(size, j);
                                    Pipe.this.buffer.write(buffer, min);
                                    j -= min;
                                    Pipe.this.buffer.notifyAll();
                                }
                            } else {
                                throw new IOException("source is closed");
                            }
                        }
                    } else {
                        throw new IllegalStateException("closed");
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:okio/Pipe$PipeSource.class */
    final class PipeSource implements Source {
        final Timeout timeout = new Timeout();

        PipeSource() {
        }

        public void close() {
            synchronized (Pipe.this.buffer) {
                Pipe pipe = Pipe.this;
                pipe.sourceClosed = true;
                pipe.buffer.notifyAll();
            }
        }

        public long read(Buffer buffer, long j) {
            synchronized (Pipe.this.buffer) {
                try {
                    if (!Pipe.this.sourceClosed) {
                        while (Pipe.this.buffer.size() == 0) {
                            Pipe pipe = Pipe.this;
                            if (pipe.sinkClosed) {
                                return -1L;
                            }
                            this.timeout.waitUntilNotified(pipe.buffer);
                        }
                        long read = Pipe.this.buffer.read(buffer, j);
                        Pipe.this.buffer.notifyAll();
                        return read;
                    }
                    throw new IllegalStateException("closed");
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public Timeout timeout() {
            return this.timeout;
        }
    }

    public Pipe(long j) {
        if (j >= 1) {
            this.maxBufferSize = j;
            return;
        }
        throw new IllegalArgumentException("maxBufferSize < 1: " + j);
    }

    public final Sink sink() {
        return this.sink;
    }

    public final Source source() {
        return this.source;
    }
}
