package okio;

import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:okio/RealBufferedSink.class */
public final class RealBufferedSink implements BufferedSink {
    public final Buffer buffer = new Buffer();
    boolean closed;
    public final Sink sink;

    public RealBufferedSink(Sink sink) {
        if (sink != null) {
            this.sink = sink;
            return;
        }
        throw new NullPointerException("sink == null");
    }

    public Buffer buffer() {
        return this.buffer;
    }

    public void close() {
        Throwable th;
        Throwable th2;
        if (this.closed) {
            return;
        }
        try {
            Buffer buffer = this.buffer;
            long j = buffer.size;
            th = null;
            if (j > 0) {
                this.sink.write(buffer, j);
                th = null;
            }
        } catch (Throwable th3) {
            th = th3;
        }
        try {
            this.sink.close();
            th2 = th;
        } catch (Throwable th4) {
            th2 = th;
            if (th == null) {
                th2 = th4;
            }
        }
        this.closed = true;
        if (th2 == null) {
            return;
        }
        Util.sneakyRethrow(th2);
    }

    public BufferedSink emit() {
        if (!this.closed) {
            long size = this.buffer.size();
            if (size > 0) {
                this.sink.write(this.buffer, size);
            }
            return this;
        }
        throw new IllegalStateException("closed");
    }

    public BufferedSink emitCompleteSegments() {
        if (!this.closed) {
            long completeSegmentByteCount = this.buffer.completeSegmentByteCount();
            if (completeSegmentByteCount > 0) {
                this.sink.write(this.buffer, completeSegmentByteCount);
            }
            return this;
        }
        throw new IllegalStateException("closed");
    }

    public void flush() {
        if (!this.closed) {
            Buffer buffer = this.buffer;
            long j = buffer.size;
            if (j > 0) {
                this.sink.write(buffer, j);
            }
            this.sink.flush();
            return;
        }
        throw new IllegalStateException("closed");
    }

    public boolean isOpen() {
        return !this.closed;
    }

    public OutputStream outputStream() {
        return new OutputStream() { // from class: okio.RealBufferedSink.1
            @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
                RealBufferedSink.this.close();
            }

            @Override // java.io.OutputStream, java.io.Flushable
            public void flush() {
                RealBufferedSink realBufferedSink = RealBufferedSink.this;
                if (!realBufferedSink.closed) {
                    realBufferedSink.flush();
                }
            }

            public String toString() {
                return RealBufferedSink.this + ".outputStream()";
            }

            @Override // java.io.OutputStream
            public void write(int i) {
                RealBufferedSink realBufferedSink = RealBufferedSink.this;
                if (!realBufferedSink.closed) {
                    realBufferedSink.buffer.writeByte((byte) i);
                    RealBufferedSink.this.emitCompleteSegments();
                    return;
                }
                throw new IOException("closed");
            }

            @Override // java.io.OutputStream
            public void write(byte[] bArr, int i, int i2) {
                RealBufferedSink realBufferedSink = RealBufferedSink.this;
                if (!realBufferedSink.closed) {
                    realBufferedSink.buffer.write(bArr, i, i2);
                    RealBufferedSink.this.emitCompleteSegments();
                    return;
                }
                throw new IOException("closed");
            }
        };
    }

    public Timeout timeout() {
        return this.sink.timeout();
    }

    public String toString() {
        return "buffer(" + this.sink + ")";
    }

    public int write(ByteBuffer byteBuffer) {
        if (!this.closed) {
            int write = this.buffer.write(byteBuffer);
            emitCompleteSegments();
            return write;
        }
        throw new IllegalStateException("closed");
    }

    public BufferedSink write(ByteString byteString) {
        if (!this.closed) {
            this.buffer.write(byteString);
            return emitCompleteSegments();
        }
        throw new IllegalStateException("closed");
    }

    /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
        r7 = r7;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public okio.BufferedSink write(okio.Source r6, long r7) {
        /*
            r5 = this;
        L0:
            r0 = r7
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L31
            r0 = r6
            r1 = r5
            okio.Buffer r1 = r1.buffer
            r2 = r7
            long r0 = r0.read(r1, r2)
            r9 = r0
            r0 = r9
            r1 = -1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L29
            r0 = r7
            r1 = r9
            long r0 = r0 - r1
            r7 = r0
            r0 = r5
            okio.BufferedSink r0 = r0.emitCompleteSegments()
            goto L0
        L29:
            java.io.EOFException r0 = new java.io.EOFException
            r1 = r0
            r1.<init>()
            throw r0
        L31:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.RealBufferedSink.write(okio.Source, long):okio.BufferedSink");
    }

    public BufferedSink write(byte[] bArr) {
        if (!this.closed) {
            this.buffer.write(bArr);
            return emitCompleteSegments();
        }
        throw new IllegalStateException("closed");
    }

    public BufferedSink write(byte[] bArr, int i, int i2) {
        if (!this.closed) {
            this.buffer.write(bArr, i, i2);
            return emitCompleteSegments();
        }
        throw new IllegalStateException("closed");
    }

    public void write(Buffer buffer, long j) {
        if (!this.closed) {
            this.buffer.write(buffer, j);
            emitCompleteSegments();
            return;
        }
        throw new IllegalStateException("closed");
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    public long writeAll(Source source) {
        if (source != null) {
            char c = 0;
            while (true) {
                long read = source.read(this.buffer, 8192L);
                if (read == -1) {
                    return c;
                }
                c += read;
                emitCompleteSegments();
            }
        } else {
            throw new IllegalArgumentException("source == null");
        }
    }

    public BufferedSink writeByte(int i) {
        if (!this.closed) {
            this.buffer.writeByte(i);
            return emitCompleteSegments();
        }
        throw new IllegalStateException("closed");
    }

    public BufferedSink writeDecimalLong(long j) {
        if (!this.closed) {
            this.buffer.writeDecimalLong(j);
            return emitCompleteSegments();
        }
        throw new IllegalStateException("closed");
    }

    public BufferedSink writeHexadecimalUnsignedLong(long j) {
        if (!this.closed) {
            this.buffer.writeHexadecimalUnsignedLong(j);
            return emitCompleteSegments();
        }
        throw new IllegalStateException("closed");
    }

    public BufferedSink writeInt(int i) {
        if (!this.closed) {
            this.buffer.writeInt(i);
            return emitCompleteSegments();
        }
        throw new IllegalStateException("closed");
    }

    public BufferedSink writeIntLe(int i) {
        if (!this.closed) {
            this.buffer.writeIntLe(i);
            return emitCompleteSegments();
        }
        throw new IllegalStateException("closed");
    }

    public BufferedSink writeLong(long j) {
        if (!this.closed) {
            this.buffer.writeLong(j);
            return emitCompleteSegments();
        }
        throw new IllegalStateException("closed");
    }

    public BufferedSink writeLongLe(long j) {
        if (!this.closed) {
            this.buffer.writeLongLe(j);
            return emitCompleteSegments();
        }
        throw new IllegalStateException("closed");
    }

    public BufferedSink writeShort(int i) {
        if (!this.closed) {
            this.buffer.writeShort(i);
            return emitCompleteSegments();
        }
        throw new IllegalStateException("closed");
    }

    public BufferedSink writeShortLe(int i) {
        if (!this.closed) {
            this.buffer.writeShortLe(i);
            return emitCompleteSegments();
        }
        throw new IllegalStateException("closed");
    }

    public BufferedSink writeString(String str, int i, int i2, Charset charset) {
        if (!this.closed) {
            this.buffer.writeString(str, i, i2, charset);
            return emitCompleteSegments();
        }
        throw new IllegalStateException("closed");
    }

    public BufferedSink writeString(String str, Charset charset) {
        if (!this.closed) {
            this.buffer.writeString(str, charset);
            return emitCompleteSegments();
        }
        throw new IllegalStateException("closed");
    }

    public BufferedSink writeUtf8(String str) {
        if (!this.closed) {
            this.buffer.writeUtf8(str);
            return emitCompleteSegments();
        }
        throw new IllegalStateException("closed");
    }

    public BufferedSink writeUtf8(String str, int i, int i2) {
        if (!this.closed) {
            this.buffer.writeUtf8(str, i, i2);
            return emitCompleteSegments();
        }
        throw new IllegalStateException("closed");
    }

    public BufferedSink writeUtf8CodePoint(int i) {
        if (!this.closed) {
            this.buffer.writeUtf8CodePoint(i);
            return emitCompleteSegments();
        }
        throw new IllegalStateException("closed");
    }
}
