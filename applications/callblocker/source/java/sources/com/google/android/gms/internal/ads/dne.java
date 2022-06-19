package com.google.android.gms.internal.ads;

import java.io.EOFException;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dne.class */
public final class dne implements dng {

    /* renamed from: a */
    private static final byte[] f14883a = new byte[4096];

    /* renamed from: b */
    private final drp f14884b;

    /* renamed from: c */
    private final long f14885c;

    /* renamed from: d */
    private long f14886d;

    /* renamed from: e */
    private byte[] f14887e = new byte[65536];

    /* renamed from: f */
    private int f14888f;

    /* renamed from: g */
    private int f14889g;

    public dne(drp drpVar, long j, long j2) {
        this.f14884b = drpVar;
        this.f14886d = j;
        this.f14885c = j2;
    }

    /* renamed from: a */
    private final int m9069a(byte[] bArr, int i, int i2, int i3, boolean z) {
        int i4;
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        int mo8808a = this.f14884b.mo8808a(bArr, i + i3, i2 - i3);
        if (mo8808a != -1) {
            i4 = i3 + mo8808a;
        } else if (i3 != 0 || !z) {
            throw new EOFException();
        } else {
            i4 = -1;
        }
        return i4;
    }

    /* renamed from: a */
    private final boolean m9070a(int i, boolean z) {
        boolean z2 = false;
        int i2 = this.f14888f + i;
        if (i2 > this.f14887e.length) {
            this.f14887e = Arrays.copyOf(this.f14887e, dsn.m8707a(this.f14887e.length << 1, 65536 + i2, i2 + 524288));
        }
        int min = Math.min(this.f14889g - this.f14888f, i);
        while (true) {
            if (min >= i) {
                this.f14888f += i;
                this.f14889g = Math.max(this.f14889g, this.f14888f);
                z2 = true;
                break;
            }
            int m9069a = m9069a(this.f14887e, this.f14888f, i, min, false);
            min = m9069a;
            if (m9069a == -1) {
                break;
            }
        }
        return z2;
    }

    /* renamed from: d */
    private final int m9068d(int i) {
        int min = Math.min(this.f14889g, i);
        m9066e(min);
        return min;
    }

    /* renamed from: d */
    private final int m9067d(byte[] bArr, int i, int i2) {
        int i3;
        if (this.f14889g == 0) {
            i3 = 0;
        } else {
            int min = Math.min(this.f14889g, i2);
            System.arraycopy(this.f14887e, 0, bArr, i, min);
            m9066e(min);
            i3 = min;
        }
        return i3;
    }

    /* renamed from: e */
    private final void m9066e(int i) {
        this.f14889g -= i;
        this.f14888f = 0;
        byte[] bArr = this.f14887e;
        if (this.f14889g < this.f14887e.length - 524288) {
            bArr = new byte[this.f14889g + 65536];
        }
        System.arraycopy(this.f14887e, i, bArr, 0, this.f14889g);
        this.f14887e = bArr;
    }

    /* renamed from: f */
    private final void m9065f(int i) {
        if (i != -1) {
            this.f14886d += i;
        }
    }

    @Override // com.google.android.gms.internal.ads.dng
    /* renamed from: a */
    public final int mo9063a(int i) {
        int m9068d = m9068d(i);
        int i2 = m9068d;
        if (m9068d == 0) {
            i2 = m9069a(f14883a, 0, Math.min(i, f14883a.length), 0, true);
        }
        m9065f(i2);
        return i2;
    }

    @Override // com.google.android.gms.internal.ads.dng
    /* renamed from: a */
    public final int mo9062a(byte[] bArr, int i, int i2) {
        int m9067d = m9067d(bArr, i, i2);
        int i3 = m9067d;
        if (m9067d == 0) {
            i3 = m9069a(bArr, i, i2, 0, true);
        }
        m9065f(i3);
        return i3;
    }

    @Override // com.google.android.gms.internal.ads.dng
    /* renamed from: a */
    public final void mo9064a() {
        this.f14888f = 0;
    }

    @Override // com.google.android.gms.internal.ads.dng
    /* renamed from: a */
    public final boolean mo9061a(byte[] bArr, int i, int i2, boolean z) {
        int i3;
        int m9067d = m9067d(bArr, i, i2);
        while (true) {
            i3 = m9067d;
            if (i3 >= i2 || i3 == -1) {
                break;
            }
            m9067d = m9069a(bArr, i, i2, i3, z);
        }
        m9065f(i3);
        return i3 != -1;
    }

    @Override // com.google.android.gms.internal.ads.dng
    /* renamed from: b */
    public final long mo9060b() {
        return this.f14886d;
    }

    @Override // com.google.android.gms.internal.ads.dng
    /* renamed from: b */
    public final void mo9059b(int i) {
        int i2;
        int m9068d = m9068d(i);
        while (true) {
            i2 = m9068d;
            if (i2 >= i || i2 == -1) {
                break;
            }
            m9068d = m9069a(f14883a, -i2, Math.min(i, f14883a.length + i2), i2, false);
        }
        m9065f(i2);
        if (i2 != -1) {
        }
    }

    @Override // com.google.android.gms.internal.ads.dng
    /* renamed from: b */
    public final void mo9058b(byte[] bArr, int i, int i2) {
        mo9061a(bArr, i, i2, false);
    }

    @Override // com.google.android.gms.internal.ads.dng
    /* renamed from: c */
    public final long mo9057c() {
        return this.f14885c;
    }

    @Override // com.google.android.gms.internal.ads.dng
    /* renamed from: c */
    public final void mo9056c(int i) {
        m9070a(i, false);
    }

    @Override // com.google.android.gms.internal.ads.dng
    /* renamed from: c */
    public final void mo9055c(byte[] bArr, int i, int i2) {
        if (!m9070a(i2, false)) {
            return;
        }
        System.arraycopy(this.f14887e, this.f14888f - i2, bArr, i, i2);
    }
}
