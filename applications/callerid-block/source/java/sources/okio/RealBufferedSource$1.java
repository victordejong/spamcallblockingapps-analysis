package okio;

import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes2-dex2jar.jar:okio/RealBufferedSource$1.class */
class RealBufferedSource$1 extends InputStream {
    final /* synthetic */ RealBufferedSource this$0;

    RealBufferedSource$1(RealBufferedSource realBufferedSource) {
        this.this$0 = realBufferedSource;
    }

    @Override // java.io.InputStream
    public int available() {
        RealBufferedSource realBufferedSource = this.this$0;
        if (!realBufferedSource.closed) {
            return (int) Math.min(realBufferedSource.buffer.size, 2147483647L);
        }
        throw new IOException("closed");
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.this$0.close();
    }

    @Override // java.io.InputStream
    public int read() {
        RealBufferedSource realBufferedSource = this.this$0;
        if (!realBufferedSource.closed) {
            Buffer buffer = realBufferedSource.buffer;
            if (buffer.size != 0 || realBufferedSource.source.read(buffer, 8192L) != -1) {
                return this.this$0.buffer.readByte() & 255;
            }
            return -1;
        }
        throw new IOException("closed");
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        if (!this.this$0.closed) {
            Util.checkOffsetAndCount(bArr.length, i, i2);
            RealBufferedSource realBufferedSource = this.this$0;
            Buffer buffer = realBufferedSource.buffer;
            if (buffer.size != 0 || realBufferedSource.source.read(buffer, 8192L) != -1) {
                return this.this$0.buffer.read(bArr, i, i2);
            }
            return -1;
        }
        throw new IOException("closed");
    }

    public String toString() {
        return this.this$0 + ".inputStream()";
    }
}
