package com.aotter.net.volley.toolbox;

import java.io.ByteArrayOutputStream;
/* loaded from: classes-dex2jar.jar:com/aotter/net/volley/toolbox/PoolingByteArrayOutputStream.class */
public class PoolingByteArrayOutputStream extends ByteArrayOutputStream {
    public static final int DEFAULT_SIZE = 256;
    public final ByteArrayPool mPool;

    public PoolingByteArrayOutputStream(ByteArrayPool byteArrayPool) {
        this(byteArrayPool, 256);
    }

    public PoolingByteArrayOutputStream(ByteArrayPool byteArrayPool, int i) {
        this.mPool = byteArrayPool;
        ((ByteArrayOutputStream) this).buf = this.mPool.getBuf(Math.max(i, 256));
    }

    private void expand(int i) {
        int i2 = ((ByteArrayOutputStream) this).count;
        if (i2 + i > ((ByteArrayOutputStream) this).buf.length) {
            byte[] buf = this.mPool.getBuf((i2 + i) * 2);
            System.arraycopy(((ByteArrayOutputStream) this).buf, 0, buf, 0, ((ByteArrayOutputStream) this).count);
            this.mPool.returnBuf(((ByteArrayOutputStream) this).buf);
            ((ByteArrayOutputStream) this).buf = buf;
        }
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.mPool.returnBuf(((ByteArrayOutputStream) this).buf);
        ((ByteArrayOutputStream) this).buf = null;
        super.close();
    }

    public void finalize() {
        this.mPool.returnBuf(((ByteArrayOutputStream) this).buf);
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream
    public void write(int i) {
        synchronized (this) {
            expand(1);
            super.write(i);
        }
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) {
        synchronized (this) {
            expand(i2);
            super.write(bArr, i, i2);
        }
    }
}
