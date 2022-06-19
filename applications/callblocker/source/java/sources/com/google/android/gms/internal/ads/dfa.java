package com.google.android.gms.internal.ads;

import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dfa.class */
final class dfa extends InputStream {

    /* renamed from: a */
    private dfb f14186a;

    /* renamed from: b */
    private dbu f14187b;

    /* renamed from: c */
    private int f14188c;

    /* renamed from: d */
    private int f14189d;

    /* renamed from: e */
    private int f14190e;

    /* renamed from: f */
    private int f14191f;

    /* renamed from: g */
    private final /* synthetic */ dew f14192g;

    public dfa(dew dewVar) {
        this.f14192g = dewVar;
        m9851a();
    }

    /* renamed from: a */
    private final int m9850a(byte[] bArr, int i, int i2) {
        int i3 = i;
        int i4 = i2;
        while (i4 > 0) {
            m9849b();
            if (this.f14187b == null) {
                break;
            }
            int min = Math.min(this.f14188c - this.f14189d, i4);
            int i5 = i3;
            if (bArr != null) {
                this.f14187b.m10217a(bArr, this.f14189d, i3, min);
                i5 = i3 + min;
            }
            this.f14189d += min;
            i4 -= min;
            i3 = i5;
        }
        return i2 - i4;
    }

    /* renamed from: a */
    private final void m9851a() {
        this.f14186a = new dfb(this.f14192g, null);
        this.f14187b = (dbu) this.f14186a.next();
        this.f14188c = this.f14187b.mo9911b();
        this.f14189d = 0;
        this.f14190e = 0;
    }

    /* renamed from: b */
    private final void m9849b() {
        if (this.f14187b == null || this.f14189d != this.f14188c) {
            return;
        }
        this.f14190e += this.f14188c;
        this.f14189d = 0;
        if (this.f14186a.hasNext()) {
            this.f14187b = (dbu) this.f14186a.next();
            this.f14188c = this.f14187b.mo9911b();
            return;
        }
        this.f14187b = null;
        this.f14188c = 0;
    }

    @Override // java.io.InputStream
    public final int available() {
        return this.f14192g.mo9911b() - (this.f14190e + this.f14189d);
    }

    @Override // java.io.InputStream
    public final void mark(int i) {
        this.f14191f = this.f14190e + this.f14189d;
    }

    @Override // java.io.InputStream
    public final boolean markSupported() {
        return true;
    }

    @Override // java.io.InputStream
    public final int read() {
        int mo9918a;
        m9849b();
        if (this.f14187b == null) {
            mo9918a = -1;
        } else {
            dbu dbuVar = this.f14187b;
            int i = this.f14189d;
            this.f14189d = i + 1;
            mo9918a = dbuVar.mo9918a(i) & 255;
        }
        return mo9918a;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        if (bArr == null) {
            throw new NullPointerException();
        }
        if (i < 0 || i2 < 0 || i2 > bArr.length - i) {
            throw new IndexOutOfBoundsException();
        }
        int m9850a = m9850a(bArr, i, i2);
        int i3 = m9850a;
        if (m9850a == 0) {
            i3 = -1;
        }
        return i3;
    }

    @Override // java.io.InputStream
    public final void reset() {
        synchronized (this) {
            m9851a();
            m9850a(null, 0, this.f14191f);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.io.InputStream
    public final long skip(long j) {
        if (j < 0) {
            throw new IndexOutOfBoundsException();
        }
        char c = j;
        if (j > 2147483647L) {
            c = 65535;
        }
        return m9850a(null, 0, c);
    }
}
