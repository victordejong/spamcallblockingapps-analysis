package com.google.android.gms.internal.ads;

import java.io.ByteArrayOutputStream;
/* renamed from: com.google.android.gms.internal.ads.we */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/we.class */
public final class C3594we extends ByteArrayOutputStream {

    /* renamed from: a */
    private final C3208hx f17542a;

    public C3594we(C3208hx c3208hx, int i) {
        this.f17542a = c3208hx;
        this.buf = this.f17542a.m7768a(Math.max(i, 256));
    }

    /* renamed from: a */
    private final void m6898a(int i) {
        if (this.count + i <= this.buf.length) {
            return;
        }
        byte[] m7768a = this.f17542a.m7768a((this.count + i) << 1);
        System.arraycopy(this.buf, 0, m7768a, 0, this.count);
        this.f17542a.m7767a(this.buf);
        this.buf = m7768a;
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f17542a.m7767a(this.buf);
        this.buf = null;
        super.close();
    }

    public final void finalize() {
        this.f17542a.m7767a(this.buf);
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream
    public final void write(int i) {
        synchronized (this) {
            m6898a(1);
            super.write(i);
        }
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) {
        synchronized (this) {
            m6898a(i2);
            super.write(bArr, i, i2);
        }
    }
}
