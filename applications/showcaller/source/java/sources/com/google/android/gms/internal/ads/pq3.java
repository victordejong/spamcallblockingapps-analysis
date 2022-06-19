package com.google.android.gms.internal.ads;

import java.io.EOFException;
import java.io.InterruptedIOException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/pq3.class */
public final class pq3 implements vq3 {

    /* renamed from: c */
    private final AbstractC7207z5 f28096c;

    /* renamed from: d */
    private final long f28097d;

    /* renamed from: e */
    private long f28098e;

    /* renamed from: g */
    private int f28100g;

    /* renamed from: h */
    private int f28101h;

    /* renamed from: f */
    private byte[] f28099f = new byte[65536];

    /* renamed from: b */
    private final byte[] f28095b = new byte[4096];

    public pq3(AbstractC7207z5 abstractC7207z5, long j, long j2) {
        this.f28096c = abstractC7207z5;
        this.f28098e = j;
        this.f28097d = j2;
    }

    /* renamed from: r */
    private final void m12194r(int i) {
        int i2 = this.f28100g + i;
        int length = this.f28099f.length;
        if (i2 > length) {
            this.f28099f = Arrays.copyOf(this.f28099f, C7101wa.m9696c0(length + length, 65536 + i2, i2 + 524288));
        }
    }

    /* renamed from: s */
    private final int m12193s(int i) {
        int min = Math.min(this.f28101h, i);
        m12191u(min);
        return min;
    }

    /* renamed from: t */
    private final int m12192t(byte[] bArr, int i, int i2) {
        int i3 = this.f28101h;
        if (i3 == 0) {
            return 0;
        }
        int min = Math.min(i3, i2);
        System.arraycopy(this.f28099f, 0, bArr, i, min);
        m12191u(min);
        return min;
    }

    /* renamed from: u */
    private final void m12191u(int i) {
        int i2 = this.f28101h - i;
        this.f28101h = i2;
        this.f28100g = 0;
        byte[] bArr = this.f28099f;
        byte[] bArr2 = i2 < bArr.length - 524288 ? new byte[65536 + i2] : bArr;
        System.arraycopy(bArr, i, bArr2, 0, i2);
        this.f28099f = bArr2;
    }

    /* renamed from: v */
    private final int m12190v(byte[] bArr, int i, int i2, int i3, boolean z) {
        if (!Thread.interrupted()) {
            int mo8335c = this.f28096c.mo8335c(bArr, i + i3, i2 - i3);
            if (mo8335c != -1) {
                return i3 + mo8335c;
            }
            if (i3 == 0 && z) {
                return -1;
            }
            throw new EOFException();
        }
        throw new InterruptedIOException();
    }

    /* renamed from: w */
    private final void m12189w(int i) {
        if (i != -1) {
            this.f28098e += i;
        }
    }

    @Override // com.google.android.gms.internal.ads.vq3
    /* renamed from: C */
    public final int mo9889C(int i) {
        int m12193s = m12193s(1);
        int i2 = m12193s;
        if (m12193s == 0) {
            i2 = m12190v(this.f28095b, 0, Math.min(1, 4096), 0, true);
        }
        m12189w(i2);
        return i2;
    }

    @Override // com.google.android.gms.internal.ads.vq3
    /* renamed from: T */
    public final void mo9888T(int i) {
        m12195q(i, false);
    }

    @Override // com.google.android.gms.internal.ads.vq3
    /* renamed from: a */
    public final void mo9887a(int i) {
        m12196p(i, false);
    }

    @Override // com.google.android.gms.internal.ads.vq3
    /* renamed from: b */
    public final void mo9886b(byte[] bArr, int i, int i2) {
        mo9883k(bArr, i, i2, false);
    }

    @Override // com.google.android.gms.internal.ads.vq3, com.google.android.gms.internal.ads.AbstractC7207z5
    /* renamed from: c */
    public final int mo8335c(byte[] bArr, int i, int i2) {
        int m12192t = m12192t(bArr, i, i2);
        int i3 = m12192t;
        if (m12192t == 0) {
            i3 = m12190v(bArr, i, i2, 0, true);
        }
        m12189w(i3);
        return i3;
    }

    @Override // com.google.android.gms.internal.ads.vq3
    /* renamed from: h */
    public final void mo9885h(byte[] bArr, int i, int i2) {
        mo9882l(bArr, i, i2, false);
    }

    @Override // com.google.android.gms.internal.ads.vq3
    /* renamed from: i */
    public final void mo9884i() {
        this.f28100g = 0;
    }

    @Override // com.google.android.gms.internal.ads.vq3
    /* renamed from: j */
    public final long mo9466j() {
        return this.f28098e + this.f28100g;
    }

    @Override // com.google.android.gms.internal.ads.vq3
    /* renamed from: k */
    public final boolean mo9883k(byte[] bArr, int i, int i2, boolean z) {
        int i3;
        int m12192t = m12192t(bArr, i, i2);
        while (true) {
            i3 = m12192t;
            if (i3 >= i2 || i3 == -1) {
                break;
            }
            m12192t = m12190v(bArr, i, i2, i3, z);
        }
        m12189w(i3);
        return i3 != -1;
    }

    @Override // com.google.android.gms.internal.ads.vq3
    /* renamed from: l */
    public final boolean mo9882l(byte[] bArr, int i, int i2, boolean z) {
        if (!m12195q(i2, z)) {
            return false;
        }
        System.arraycopy(this.f28099f, this.f28100g - i2, bArr, i, i2);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.vq3
    /* renamed from: m */
    public final long mo9465m() {
        return this.f28098e;
    }

    @Override // com.google.android.gms.internal.ads.vq3
    /* renamed from: n */
    public final long mo9464n() {
        return this.f28097d;
    }

    @Override // com.google.android.gms.internal.ads.vq3
    /* renamed from: o */
    public final int mo9881o(byte[] bArr, int i, int i2) {
        int i3;
        m12194r(i2);
        int i4 = this.f28101h;
        int i5 = this.f28100g;
        int i6 = i4 - i5;
        if (i6 == 0) {
            i3 = m12190v(this.f28099f, i5, i2, 0, true);
            if (i3 == -1) {
                return -1;
            }
            this.f28101h += i3;
        } else {
            i3 = Math.min(i2, i6);
        }
        System.arraycopy(this.f28099f, this.f28100g, bArr, i, i3);
        this.f28100g += i3;
        return i3;
    }

    /* renamed from: p */
    public final boolean m12196p(int i, boolean z) {
        int i2;
        int m12193s = m12193s(i);
        while (true) {
            i2 = m12193s;
            if (i2 >= i || i2 == -1) {
                break;
            }
            m12193s = m12190v(this.f28095b, -i2, Math.min(i, i2 + 4096), i2, false);
        }
        m12189w(i2);
        return i2 != -1;
    }

    /* renamed from: q */
    public final boolean m12195q(int i, boolean z) {
        m12194r(i);
        int i2 = this.f28101h - this.f28100g;
        while (i2 < i) {
            i2 = m12190v(this.f28099f, this.f28100g, i, i2, z);
            if (i2 == -1) {
                return false;
            }
            this.f28101h = this.f28100g + i2;
        }
        this.f28100g += i;
        return true;
    }
}
