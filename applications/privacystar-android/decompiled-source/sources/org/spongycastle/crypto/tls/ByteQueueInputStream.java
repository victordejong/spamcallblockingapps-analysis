package org.spongycastle.crypto.tls;

import java.io.InputStream;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/tls/ByteQueueInputStream.class */
public class ByteQueueInputStream extends InputStream {
    private ByteQueue buffer = new ByteQueue();

    public void addBytes(byte[] bArr) {
        this.buffer.addData(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int available() {
        return this.buffer.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    public int peek(byte[] bArr) {
        int min = Math.min(this.buffer.available(), bArr.length);
        this.buffer.read(bArr, 0, min, 0);
        return min;
    }

    @Override // java.io.InputStream
    public int read() {
        if (this.buffer.available() == 0) {
            return -1;
        }
        return this.buffer.removeData(1, 0)[0] & 255;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        int min = Math.min(this.buffer.available(), i2);
        this.buffer.removeData(bArr, i, min, 0);
        return min;
    }

    @Override // java.io.InputStream
    public long skip(long j) {
        int min = Math.min((int) j, this.buffer.available());
        this.buffer.removeData(min);
        return min;
    }
}
