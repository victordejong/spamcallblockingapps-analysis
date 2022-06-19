package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.ki */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ki.class */
public final class C6665ki {

    /* renamed from: a */
    public byte[] f25221a;

    /* renamed from: b */
    private int f25222b;

    /* renamed from: c */
    private int f25223c;

    public C6665ki() {
    }

    public C6665ki(int i) {
        this.f25221a = new byte[i];
        this.f25223c = i;
    }

    public C6665ki(byte[] bArr) {
        this.f25221a = bArr;
        this.f25223c = bArr.length;
    }

    /* renamed from: a */
    public final void m13907a(int i) {
        m13906b(m13900h() < i ? new byte[i] : this.f25221a, i);
    }

    /* renamed from: b */
    public final void m13906b(byte[] bArr, int i) {
        this.f25221a = bArr;
        this.f25223c = i;
        this.f25222b = 0;
    }

    /* renamed from: c */
    public final void m13905c() {
        this.f25222b = 0;
        this.f25223c = 0;
    }

    /* renamed from: d */
    public final int m13904d() {
        return this.f25223c - this.f25222b;
    }

    /* renamed from: e */
    public final int m13903e() {
        return this.f25223c;
    }

    /* renamed from: f */
    public final void m13902f(int i) {
        boolean z = false;
        if (i >= 0) {
            z = false;
            if (i <= this.f25221a.length) {
                z = true;
            }
        }
        C6367ci.m16042a(z);
        this.f25223c = i;
    }

    /* renamed from: g */
    public final int m13901g() {
        return this.f25222b;
    }

    /* renamed from: h */
    public final int m13900h() {
        byte[] bArr = this.f25221a;
        if (bArr == null) {
            return 0;
        }
        return bArr.length;
    }

    /* renamed from: i */
    public final void m13899i(int i) {
        boolean z = false;
        if (i >= 0) {
            z = false;
            if (i <= this.f25223c) {
                z = true;
            }
        }
        C6367ci.m16042a(z);
        this.f25222b = i;
    }

    /* renamed from: j */
    public final void m13898j(int i) {
        m13899i(this.f25222b + i);
    }

    /* renamed from: k */
    public final void m13897k(byte[] bArr, int i, int i2) {
        System.arraycopy(this.f25221a, this.f25222b, bArr, i, i2);
        this.f25222b += i2;
    }

    /* renamed from: l */
    public final int m13896l() {
        byte[] bArr = this.f25221a;
        int i = this.f25222b;
        this.f25222b = i + 1;
        return bArr[i] & 255;
    }

    /* renamed from: m */
    public final int m13895m() {
        byte[] bArr = this.f25221a;
        int i = this.f25222b;
        int i2 = i + 1;
        this.f25222b = i2;
        byte b = bArr[i];
        this.f25222b = i2 + 1;
        return (bArr[i2] & 255) | ((b & 255) << 8);
    }

    /* renamed from: n */
    public final int m13894n() {
        byte[] bArr = this.f25221a;
        int i = this.f25222b;
        int i2 = i + 1;
        this.f25222b = i2;
        byte b = bArr[i];
        this.f25222b = i2 + 1;
        return ((bArr[i2] & 255) << 8) | (b & 255);
    }

    /* renamed from: o */
    public final short m13893o() {
        byte[] bArr = this.f25221a;
        int i = this.f25222b;
        int i2 = i + 1;
        this.f25222b = i2;
        byte b = bArr[i];
        this.f25222b = i2 + 1;
        return (short) ((bArr[i2] & 255) | ((b & 255) << 8));
    }

    /* renamed from: p */
    public final long m13892p() {
        byte[] bArr = this.f25221a;
        int i = this.f25222b;
        int i2 = i + 1;
        this.f25222b = i2;
        byte b = bArr[i];
        int i3 = i2 + 1;
        this.f25222b = i3;
        byte b2 = bArr[i2];
        int i4 = i3 + 1;
        this.f25222b = i4;
        byte b3 = bArr[i3];
        this.f25222b = i4 + 1;
        return ((b2 & 255) << 16) | ((b & 255) << 24) | ((b3 & 255) << 8) | (bArr[i4] & 255);
    }

    /* renamed from: q */
    public final long m13891q() {
        byte[] bArr = this.f25221a;
        int i = this.f25222b;
        int i2 = i + 1;
        this.f25222b = i2;
        byte b = bArr[i];
        int i3 = i2 + 1;
        this.f25222b = i3;
        byte b2 = bArr[i2];
        int i4 = i3 + 1;
        this.f25222b = i4;
        byte b3 = bArr[i3];
        this.f25222b = i4 + 1;
        return ((b2 & 255) << 8) | (b & 255) | ((b3 & 255) << 16) | ((bArr[i4] & 255) << 24);
    }

    /* renamed from: r */
    public final int m13890r() {
        byte[] bArr = this.f25221a;
        int i = this.f25222b;
        int i2 = i + 1;
        this.f25222b = i2;
        byte b = bArr[i];
        int i3 = i2 + 1;
        this.f25222b = i3;
        byte b2 = bArr[i2];
        int i4 = i3 + 1;
        this.f25222b = i4;
        byte b3 = bArr[i3];
        this.f25222b = i4 + 1;
        return (bArr[i4] & 255) | ((b & 255) << 24) | ((b2 & 255) << 16) | ((b3 & 255) << 8);
    }

    /* renamed from: s */
    public final long m13889s() {
        byte[] bArr = this.f25221a;
        int i = this.f25222b;
        int i2 = i + 1;
        this.f25222b = i2;
        byte b = bArr[i];
        int i3 = i2 + 1;
        this.f25222b = i3;
        byte b2 = bArr[i2];
        int i4 = i3 + 1;
        this.f25222b = i4;
        byte b3 = bArr[i3];
        int i5 = i4 + 1;
        this.f25222b = i5;
        byte b4 = bArr[i4];
        int i6 = i5 + 1;
        this.f25222b = i6;
        byte b5 = bArr[i5];
        int i7 = i6 + 1;
        this.f25222b = i7;
        byte b6 = bArr[i6];
        int i8 = i7 + 1;
        this.f25222b = i8;
        byte b7 = bArr[i7];
        this.f25222b = i8 + 1;
        return ((b2 & 255) << 48) | ((b & 255) << 56) | ((b3 & 255) << 40) | ((b4 & 255) << 32) | ((b5 & 255) << 24) | ((b6 & 255) << 16) | ((b7 & 255) << 8) | (bArr[i8] & 255);
    }

    /* renamed from: t */
    public final int m13888t() {
        byte[] bArr = this.f25221a;
        int i = this.f25222b;
        int i2 = i + 1;
        this.f25222b = i2;
        byte b = bArr[i];
        int i3 = i2 + 1;
        this.f25222b = i3;
        byte b2 = bArr[i2];
        this.f25222b = i3 + 2;
        return (b2 & 255) | ((b & 255) << 8);
    }

    /* renamed from: u */
    public final int m13887u() {
        int m13890r = m13890r();
        if (m13890r >= 0) {
            return m13890r;
        }
        StringBuilder sb = new StringBuilder(29);
        sb.append("Top bit not zero: ");
        sb.append(m13890r);
        throw new IllegalStateException(sb.toString());
    }

    /* renamed from: v */
    public final long m13886v() {
        long m13889s = m13889s();
        if (m13889s >= 0) {
            return m13889s;
        }
        StringBuilder sb = new StringBuilder(38);
        sb.append("Top bit not zero: ");
        sb.append(m13889s);
        throw new IllegalStateException(sb.toString());
    }

    /* renamed from: w */
    public final String m13885w(int i) {
        if (i == 0) {
            return "";
        }
        int i2 = this.f25222b;
        int i3 = (i2 + i) - 1;
        String str = new String(this.f25221a, i2, (i3 >= this.f25223c || this.f25221a[i3] != 0) ? i : i - 1);
        this.f25222b += i;
        return str;
    }
}
