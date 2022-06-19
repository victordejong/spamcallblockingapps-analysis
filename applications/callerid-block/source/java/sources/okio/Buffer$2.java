package okio;

import java.io.InputStream;
/* loaded from: classes2-dex2jar.jar:okio/Buffer$2.class */
class Buffer$2 extends InputStream {
    final /* synthetic */ Buffer this$0;

    Buffer$2(Buffer buffer) {
        this.this$0 = buffer;
    }

    @Override // java.io.InputStream
    public int available() {
        return (int) Math.min(this.this$0.size, 2147483647L);
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // java.io.InputStream
    public int read() {
        Buffer buffer = this.this$0;
        if (buffer.size > 0) {
            return buffer.readByte() & 255;
        }
        return -1;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        return this.this$0.read(bArr, i, i2);
    }

    public String toString() {
        return this.this$0 + ".inputStream()";
    }
}
