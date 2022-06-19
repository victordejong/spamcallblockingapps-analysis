package com.google.android.gms.internal.ads;

import java.io.ByteArrayOutputStream;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/f04.class */
public final class f04 extends ByteArrayOutputStream {

    /* renamed from: d */
    private final rz3 f22699d;

    public f04(rz3 rz3Var, int i) {
        this.f22699d = rz3Var;
        ((ByteArrayOutputStream) this).buf = rz3Var.m11201a(Math.max(i, 256));
    }

    /* renamed from: a */
    private final void m15327a(int i) {
        int i2 = ((ByteArrayOutputStream) this).count;
        if (i2 + i <= ((ByteArrayOutputStream) this).buf.length) {
            return;
        }
        int i3 = i2 + i;
        byte[] m11201a = this.f22699d.m11201a(i3 + i3);
        System.arraycopy(((ByteArrayOutputStream) this).buf, 0, m11201a, 0, ((ByteArrayOutputStream) this).count);
        this.f22699d.m11200b(((ByteArrayOutputStream) this).buf);
        ((ByteArrayOutputStream) this).buf = m11201a;
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f22699d.m11200b(((ByteArrayOutputStream) this).buf);
        ((ByteArrayOutputStream) this).buf = null;
        super.close();
    }

    public final void finalize() {
        this.f22699d.m11200b(((ByteArrayOutputStream) this).buf);
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream
    public final void write(int i) {
        synchronized (this) {
            m15327a(1);
            super.write(i);
        }
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) {
        synchronized (this) {
            m15327a(i2);
            super.write(bArr, i, i2);
        }
    }
}
