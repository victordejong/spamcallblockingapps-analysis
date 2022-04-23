package com.bytedance.sdk.adnet.core;

import io.objectbox.model.PropertyFlags;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/core/c.class */
class c extends ByteArrayOutputStream {

    /* renamed from: a  reason: collision with root package name */
    private final b f8287a;

    public c(b bVar, int i) {
        this.f8287a = bVar;
        this.buf = bVar.a(Math.max(i, (int) PropertyFlags.INDEX_PARTIAL_SKIP_NULL));
    }

    private void a(int i) {
        if (this.count + i > this.buf.length) {
            byte[] a2 = this.f8287a.a((this.count + i) * 2);
            System.arraycopy(this.buf, 0, a2, 0, this.count);
            this.f8287a.a(this.buf);
            this.buf = a2;
        }
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f8287a.a(this.buf);
        this.buf = null;
        super.close();
    }

    public void finalize() {
        this.f8287a.a(this.buf);
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
