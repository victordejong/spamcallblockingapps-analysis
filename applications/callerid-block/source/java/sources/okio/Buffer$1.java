package okio;

import java.io.OutputStream;
/* loaded from: classes2-dex2jar.jar:okio/Buffer$1.class */
class Buffer$1 extends OutputStream {
    final /* synthetic */ Buffer this$0;

    Buffer$1(Buffer buffer) {
        this.this$0 = buffer;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() {
    }

    public String toString() {
        return this.this$0 + ".outputStream()";
    }

    @Override // java.io.OutputStream
    public void write(int i) {
        this.this$0.writeByte((byte) i);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) {
        this.this$0.write(bArr, i, i2);
    }
}
