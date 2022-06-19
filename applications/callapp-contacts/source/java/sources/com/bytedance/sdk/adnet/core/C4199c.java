package com.bytedance.sdk.adnet.core;

import io.objectbox.model.PropertyFlags;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
/* renamed from: com.bytedance.sdk.adnet.core.c */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/core/c.class */
class C4199c extends ByteArrayOutputStream {

    /* renamed from: a */
    private final C4197b f15406a;

    public C4199c(C4197b c4197b, int i) {
        this.f15406a = c4197b;
        this.buf = c4197b.m36184a(Math.max(i, (int) PropertyFlags.INDEX_PARTIAL_SKIP_NULL));
    }

    /* renamed from: a */
    private void m36181a(int i) {
        if (this.count + i <= this.buf.length) {
            return;
        }
        byte[] m36184a = this.f15406a.m36184a((this.count + i) * 2);
        System.arraycopy(this.buf, 0, m36184a, 0, this.count);
        this.f15406a.m36183a(this.buf);
        this.buf = m36184a;
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f15406a.m36183a(this.buf);
        this.buf = null;
        super.close();
    }

    public void finalize() {
        this.f15406a.m36183a(this.buf);
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream
    public void write(int i) {
        synchronized (this) {
            m36181a(1);
            super.write(i);
        }
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) {
        synchronized (this) {
            m36181a(i2);
            super.write(bArr, i, i2);
        }
    }
}
