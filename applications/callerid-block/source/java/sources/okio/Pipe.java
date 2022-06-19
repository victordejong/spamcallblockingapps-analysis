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
            Pipe.this = r5;
        }

        public void close() {
            synchronized (Pipe.this.buffer) {
                Pipe pipe = Pipe.this;
                if (pipe.sinkClosed) {
                    return;
                }
                if (pipe.sourceClosed && pipe.buffer.size() > 0) {
                    throw new IOException("source is closed");
                }
                Pipe pipe2 = Pipe.this;
                pipe2.sinkClosed = true;
                pipe2.buffer.notifyAll();
            }
        }

        public void flush() {
            synchronized (Pipe.this.buffer) {
                Pipe pipe = Pipe.this;
                if (pipe.sinkClosed) {
                    throw new IllegalStateException("closed");
                }
                if (pipe.sourceClosed && pipe.buffer.size() > 0) {
                    throw new IOException("source is closed");
                }
            }
        }

        public Timeout timeout() {
            return this.timeout;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v12, types: [long] */
        /* JADX WARN: Type inference failed for: r0v34, types: [long] */
        /* JADX WARN: Type inference failed for: r0v35, types: [long] */
        /* JADX WARN: Type inference failed for: r1v10, types: [long] */
        /* JADX WARN: Type inference failed for: r7v0, types: [long] */
        /* JADX WARN: Type inference failed for: r7v1 */
        /* JADX WARN: Type inference failed for: r7v2 */
        /* JADX WARN: Type inference failed for: r7v3 */
        /* JADX WARN: Type inference failed for: r7v4 */
        public void write(Buffer buffer, long j) {
            synchronized (Pipe.this.buffer) {
                try {
                    if (Pipe.this.sinkClosed) {
                        throw new IllegalStateException("closed");
                    }
                    while ((j == true ? 1 : 0) > 0) {
                        Pipe pipe = Pipe.this;
                        if (pipe.sourceClosed) {
                            throw new IOException("source is closed");
                        }
                        long size = pipe.maxBufferSize - pipe.buffer.size();
                        if (size == 0) {
                            this.timeout.waitUntilNotified(Pipe.this.buffer);
                        } else {
                            long min = Math.min(size, (long) j);
                            Pipe.this.buffer.write(buffer, min);
                            j -= min;
                            Pipe.this.buffer.notifyAll();
                        }
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
            Pipe.this = r5;
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
                    if (Pipe.this.sourceClosed) {
                        throw new IllegalStateException("closed");
                    }
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
