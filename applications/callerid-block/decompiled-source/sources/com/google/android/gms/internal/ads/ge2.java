package com.google.android.gms.internal.ads;

import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ge2.class */
final class ge2 extends InputStream {

    /* renamed from: b */
    private fe2 f6644b;

    /* renamed from: c */
    private zzesb f6645c;

    /* renamed from: d */
    private int f6646d;

    /* renamed from: e */
    private int f6647e;

    /* renamed from: f */
    private int f6648f;

    /* renamed from: g */
    private int f6649g;

    /* renamed from: h */
    final /* synthetic */ zzeve f6650h;

    public ge2(zzeve zzeveVar) {
        this.f6650h = zzeveVar;
        m7397p();
    }

    /* renamed from: B */
    private final int m7399B() {
        return this.f6650h.zzc() - (this.f6648f + this.f6647e);
    }

    /* renamed from: a */
    private final int m7398a(byte[] bArr, int i, int i2) {
        int i3 = i2;
        while (i3 > 0) {
            m7396x();
            if (this.f6645c == null) {
                break;
            }
            int min = Math.min(this.f6646d - this.f6647e, i3);
            i = i;
            if (bArr != null) {
                this.f6645c.zzx(bArr, this.f6647e, i, min);
                i += min;
            }
            this.f6647e += min;
            i3 -= min;
        }
        return i2 - i3;
    }

    /* renamed from: p */
    private final void m7397p() {
        fe2 fe2Var = new fe2(this.f6650h, null);
        this.f6644b = fe2Var;
        zzesb b = fe2Var.next();
        this.f6645c = b;
        this.f6646d = b.zzc();
        this.f6647e = 0;
        this.f6648f = 0;
    }

    /* renamed from: x */
    private final void m7396x() {
        if (this.f6645c != null) {
            int i = this.f6647e;
            int i2 = this.f6646d;
            if (i == i2) {
                this.f6648f += i2;
                int i3 = 0;
                this.f6647e = 0;
                if (this.f6644b.hasNext()) {
                    zzesb b = this.f6644b.next();
                    this.f6645c = b;
                    i3 = b.zzc();
                } else {
                    this.f6645c = null;
                }
                this.f6646d = i3;
            }
        }
    }

    @Override // java.io.InputStream
    public final int available() {
        return m7399B();
    }

    @Override // java.io.InputStream
    public final void mark(int i) {
        this.f6649g = this.f6648f + this.f6647e;
    }

    @Override // java.io.InputStream
    public final boolean markSupported() {
        return true;
    }

    @Override // java.io.InputStream
    public final int read() {
        m7396x();
        zzesb zzesbVar = this.f6645c;
        if (zzesbVar == null) {
            return -1;
        }
        int i = this.f6647e;
        this.f6647e = i + 1;
        return zzesbVar.zza(i) & 255;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        bArr.getClass();
        if (i < 0 || i2 < 0 || i2 > bArr.length - i) {
            throw new IndexOutOfBoundsException();
        }
        int a = m7398a(bArr, i, i2);
        int i3 = a;
        if (a == 0) {
            i3 = (i2 > 0 || m7399B() == 0) ? -1 : 0;
        }
        return i3;
    }

    @Override // java.io.InputStream
    public final void reset() {
        synchronized (this) {
            m7397p();
            m7398a(null, 0, this.f6649g);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v2 */
    @Override // java.io.InputStream
    public final long skip(long j) {
        if (j >= 0) {
            long j2 = j;
            if (j > 2147483647L) {
                j2 = 2147483647;
            }
            return m7398a(null, 0, (int) j2);
        }
        throw new IndexOutOfBoundsException();
    }
}
