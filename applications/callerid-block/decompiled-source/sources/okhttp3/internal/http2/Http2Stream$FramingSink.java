package okhttp3.internal.http2;

import okio.Buffer;
import okio.Sink;
import okio.Timeout;
/* loaded from: classes2-dex2jar.jar:okhttp3/internal/http2/Http2Stream$FramingSink.class */
final class Http2Stream$FramingSink implements Sink {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final long EMIT_BUFFER_SIZE = 16384;
    boolean closed;
    boolean finished;
    private final Buffer sendBuffer = new Buffer();
    final /* synthetic */ Http2Stream this$0;

    Http2Stream$FramingSink(Http2Stream http2Stream) {
        this.this$0 = http2Stream;
    }

    private void emitFrame(boolean z) {
        Http2Stream http2Stream;
        long min;
        Http2Stream http2Stream2;
        synchronized (this.this$0) {
            try {
                this.this$0.writeTimeout.enter();
                while (true) {
                    http2Stream = this.this$0;
                    if (http2Stream.bytesLeftInWriteWindow > 0 || this.finished || this.closed || http2Stream.errorCode != null) {
                        break;
                    }
                    http2Stream.waitForIo();
                }
                http2Stream.writeTimeout.exitAndThrowIfTimedOut();
                this.this$0.checkOutNotClosed();
                min = Math.min(this.this$0.bytesLeftInWriteWindow, this.sendBuffer.size());
                http2Stream2 = this.this$0;
                http2Stream2.bytesLeftInWriteWindow -= min;
            } catch (Throwable th) {
                throw th;
            }
        }
        http2Stream2.writeTimeout.enter();
        try {
            Http2Stream http2Stream3 = this.this$0;
            http2Stream3.connection.writeData(http2Stream3.id, z && min == this.sendBuffer.size(), this.sendBuffer, min);
        } finally {
            this.this$0.writeTimeout.exitAndThrowIfTimedOut();
        }
    }

    public void close() {
        synchronized (this.this$0) {
            try {
                if (!this.closed) {
                    if (!this.this$0.sink.finished) {
                        if (this.sendBuffer.size() > 0) {
                            while (this.sendBuffer.size() > 0) {
                                emitFrame(true);
                            }
                        } else {
                            Http2Stream http2Stream = this.this$0;
                            http2Stream.connection.writeData(http2Stream.id, true, null, 0L);
                        }
                    }
                    synchronized (this.this$0) {
                        this.closed = true;
                    }
                    this.this$0.connection.flush();
                    this.this$0.cancelStreamIfNecessary();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void flush() {
        synchronized (this.this$0) {
            try {
                this.this$0.checkOutNotClosed();
            } catch (Throwable th) {
                throw th;
            }
        }
        while (this.sendBuffer.size() > 0) {
            emitFrame(false);
            this.this$0.connection.flush();
        }
    }

    public Timeout timeout() {
        return this.this$0.writeTimeout;
    }

    public void write(Buffer buffer, long j) {
        this.sendBuffer.write(buffer, j);
        while (this.sendBuffer.size() >= EMIT_BUFFER_SIZE) {
            emitFrame(false);
        }
    }
}
