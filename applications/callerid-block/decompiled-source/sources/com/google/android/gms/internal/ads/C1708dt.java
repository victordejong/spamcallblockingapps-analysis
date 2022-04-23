package com.google.android.gms.internal.ads;

import java.io.ByteArrayOutputStream;
/* renamed from: com.google.android.gms.internal.ads.dt */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dt.class */
public final class C1708dt extends ByteArrayOutputStream {

    /* renamed from: b */
    private final C1995vg f6370b;

    public C1708dt(C1995vg vgVar, int i) {
        this.f6370b = vgVar;
        ((ByteArrayOutputStream) this).buf = vgVar.m5254a(Math.max(i, 256));
    }

    /* renamed from: a */
    private final void m7684a(int i) {
        int i2 = ((ByteArrayOutputStream) this).count;
        if (i2 + i > ((ByteArrayOutputStream) this).buf.length) {
            int i3 = i2 + i;
            byte[] a = this.f6370b.m5254a(i3 + i3);
            System.arraycopy(((ByteArrayOutputStream) this).buf, 0, a, 0, ((ByteArrayOutputStream) this).count);
            this.f6370b.m5253b(((ByteArrayOutputStream) this).buf);
            ((ByteArrayOutputStream) this).buf = a;
        }
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f6370b.m5253b(((ByteArrayOutputStream) this).buf);
        ((ByteArrayOutputStream) this).buf = null;
        super.close();
    }

    public final void finalize() {
        this.f6370b.m5253b(((ByteArrayOutputStream) this).buf);
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream
    public final void write(int i) {
        synchronized (this) {
            m7684a(1);
            super.write(i);
        }
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) {
        synchronized (this) {
            m7684a(i2);
            super.write(bArr, i, i2);
        }
    }
}
