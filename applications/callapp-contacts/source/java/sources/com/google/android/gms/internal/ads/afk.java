package com.google.android.gms.internal.ads;

import io.objectbox.model.PropertyFlags;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/afk.class */
public final class afk extends ByteArrayOutputStream {

    /* renamed from: a */
    private final C12886rq f40152a;

    public afk(C12886rq c12886rq, int i) {
        this.f40152a = c12886rq;
        this.buf = c12886rq.m14209a(Math.max(i, (int) PropertyFlags.INDEX_PARTIAL_SKIP_NULL));
    }

    /* renamed from: a */
    private final void m18771a(int i) {
        if (this.count + i <= this.buf.length) {
            return;
        }
        byte[] m14209a = this.f40152a.m14209a((this.count + i) << 1);
        System.arraycopy(this.buf, 0, m14209a, 0, this.count);
        this.f40152a.m14208a(this.buf);
        this.buf = m14209a;
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.f40152a.m14208a(this.buf);
        this.buf = null;
        super.close();
    }

    public final void finalize() {
        this.f40152a.m14208a(this.buf);
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream
    public final void write(int i) {
        synchronized (this) {
            m18771a(1);
            super.write(i);
        }
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) {
        synchronized (this) {
            m18771a(i2);
            super.write(bArr, i, i2);
        }
    }
}
