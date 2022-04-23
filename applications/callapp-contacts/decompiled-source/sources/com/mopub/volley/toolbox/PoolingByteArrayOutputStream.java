package com.mopub.volley.toolbox;

import io.objectbox.model.PropertyFlags;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
/* loaded from: classes4-dex2jar.jar:com/mopub/volley/toolbox/PoolingByteArrayOutputStream.class */
public class PoolingByteArrayOutputStream extends ByteArrayOutputStream {

    /* renamed from: a  reason: collision with root package name */
    private final ByteArrayPool f34874a;

    public PoolingByteArrayOutputStream(ByteArrayPool byteArrayPool) {
        this(byteArrayPool, PropertyFlags.INDEX_PARTIAL_SKIP_NULL);
    }

    public PoolingByteArrayOutputStream(ByteArrayPool byteArrayPool, int i) {
        this.f34874a = byteArrayPool;
        this.buf = byteArrayPool.getBuf(Math.max(i, (int) PropertyFlags.INDEX_PARTIAL_SKIP_NULL));
    }

    private void a(int i) {
        if (this.count + i > this.buf.length) {
            byte[] buf = this.f34874a.getBuf((this.count + i) * 2);
            System.arraycopy(this.buf, 0, buf, 0, this.count);
            this.f34874a.returnBuf(this.buf);
            this.buf = buf;
        }
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f34874a.returnBuf(this.buf);
        this.buf = null;
        super.close();
    }

    public void finalize() {
        this.f34874a.returnBuf(this.buf);
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream
    public void write(int i) {
        synchronized (this) {
            a(1);
            super.write(i);
        }
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) {
        synchronized (this) {
            a(i2);
            super.write(bArr, i, i2);
        }
    }
}
