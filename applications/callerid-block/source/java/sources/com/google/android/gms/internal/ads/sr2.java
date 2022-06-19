package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/sr2.class */
public final class sr2 {

    /* renamed from: a */
    public byte[] f8551a;

    /* renamed from: b */
    private int f8552b;

    /* renamed from: c */
    private int f8553c;

    public sr2() {
    }

    public sr2(int i) {
        this.f8551a = new byte[i];
        this.f8553c = i;
    }

    public sr2(byte[] bArr) {
        this.f8551a = bArr;
        this.f8553c = bArr.length;
    }

    /* renamed from: a */
    public final void m5616a(int i) {
        m5615b(m5609h() < i ? new byte[i] : this.f8551a, i);
    }

    /* renamed from: b */
    public final void m5615b(byte[] bArr, int i) {
        this.f8551a = bArr;
        this.f8553c = i;
        this.f8552b = 0;
    }

    /* renamed from: c */
    public final void m5614c() {
        this.f8552b = 0;
        this.f8553c = 0;
    }

    /* renamed from: d */
    public final int m5613d() {
        return this.f8553c - this.f8552b;
    }

    /* renamed from: e */
    public final int m5612e() {
        return this.f8553c;
    }

    /* renamed from: f */
    public final void m5611f(int i) {
        boolean z = false;
        if (i >= 0) {
            z = false;
            if (i <= this.f8551a.length) {
                z = true;
            }
        }
        jr2.m6926a(z);
        this.f8553c = i;
    }

    /* renamed from: g */
    public final int m5610g() {
        return this.f8552b;
    }

    /* renamed from: h */
    public final int m5609h() {
        byte[] bArr = this.f8551a;
        if (bArr == null) {
            return 0;
        }
        return bArr.length;
    }

    /* renamed from: i */
    public final void m5608i(int i) {
        boolean z = false;
        if (i >= 0) {
            z = false;
            if (i <= this.f8553c) {
                z = true;
            }
        }
        jr2.m6926a(z);
        this.f8552b = i;
    }

    /* renamed from: j */
    public final void m5607j(int i) {
        m5608i(this.f8552b + i);
    }

    /* renamed from: k */
    public final void m5606k(byte[] bArr, int i, int i2) {
        System.arraycopy(this.f8551a, this.f8552b, bArr, i, i2);
        this.f8552b += i2;
    }

    /* renamed from: l */
    public final int m5605l() {
        byte[] bArr = this.f8551a;
        int i = this.f8552b;
        this.f8552b = i + 1;
        return bArr[i] & 255;
    }

    /* renamed from: m */
    public final int m5604m() {
        byte[] bArr = this.f8551a;
        int i = this.f8552b;
        int i2 = i + 1;
        this.f8552b = i2;
        byte b = bArr[i];
        this.f8552b = i2 + 1;
        return (bArr[i2] & 255) | ((b & 255) << 8);
    }

    /* renamed from: n */
    public final int m5603n() {
        byte[] bArr = this.f8551a;
        int i = this.f8552b;
        int i2 = i + 1;
        this.f8552b = i2;
        byte b = bArr[i];
        this.f8552b = i2 + 1;
        return ((bArr[i2] & 255) << 8) | (b & 255);
    }

    /* renamed from: o */
    public final short m5602o() {
        byte[] bArr = this.f8551a;
        int i = this.f8552b;
        int i2 = i + 1;
        this.f8552b = i2;
        byte b = bArr[i];
        this.f8552b = i2 + 1;
        return (short) ((bArr[i2] & 255) | ((b & 255) << 8));
    }

    /* renamed from: p */
    public final long m5601p() {
        byte[] bArr = this.f8551a;
        int i = this.f8552b;
        int i2 = i + 1;
        this.f8552b = i2;
        byte b = bArr[i];
        int i3 = i2 + 1;
        this.f8552b = i3;
        byte b2 = bArr[i2];
        int i4 = i3 + 1;
        this.f8552b = i4;
        byte b3 = bArr[i3];
        this.f8552b = i4 + 1;
        return ((b2 & 255) << 16) | ((b & 255) << 24) | ((b3 & 255) << 8) | (bArr[i4] & 255);
    }

    /* renamed from: q */
    public final long m5600q() {
        byte[] bArr = this.f8551a;
        int i = this.f8552b;
        int i2 = i + 1;
        this.f8552b = i2;
        byte b = bArr[i];
        int i3 = i2 + 1;
        this.f8552b = i3;
        byte b2 = bArr[i2];
        int i4 = i3 + 1;
        this.f8552b = i4;
        byte b3 = bArr[i3];
        this.f8552b = i4 + 1;
        return ((b2 & 255) << 8) | (b & 255) | ((b3 & 255) << 16) | ((bArr[i4] & 255) << 24);
    }

    /* renamed from: r */
    public final int m5599r() {
        byte[] bArr = this.f8551a;
        int i = this.f8552b;
        int i2 = i + 1;
        this.f8552b = i2;
        byte b = bArr[i];
        int i3 = i2 + 1;
        this.f8552b = i3;
        byte b2 = bArr[i2];
        int i4 = i3 + 1;
        this.f8552b = i4;
        byte b3 = bArr[i3];
        this.f8552b = i4 + 1;
        return (bArr[i4] & 255) | ((b & 255) << 24) | ((b2 & 255) << 16) | ((b3 & 255) << 8);
    }

    /* renamed from: s */
    public final long m5598s() {
        byte[] bArr = this.f8551a;
        int i = this.f8552b;
        int i2 = i + 1;
        this.f8552b = i2;
        byte b = bArr[i];
        int i3 = i2 + 1;
        this.f8552b = i3;
        byte b2 = bArr[i2];
        int i4 = i3 + 1;
        this.f8552b = i4;
        byte b3 = bArr[i3];
        int i5 = i4 + 1;
        this.f8552b = i5;
        byte b4 = bArr[i4];
        int i6 = i5 + 1;
        this.f8552b = i6;
        byte b5 = bArr[i5];
        int i7 = i6 + 1;
        this.f8552b = i7;
        byte b6 = bArr[i6];
        int i8 = i7 + 1;
        this.f8552b = i8;
        byte b7 = bArr[i7];
        this.f8552b = i8 + 1;
        return ((b2 & 255) << 48) | ((b & 255) << 56) | ((b3 & 255) << 40) | ((b4 & 255) << 32) | ((b5 & 255) << 24) | ((b6 & 255) << 16) | ((b7 & 255) << 8) | (bArr[i8] & 255);
    }

    /* renamed from: t */
    public final int m5597t() {
        byte[] bArr = this.f8551a;
        int i = this.f8552b;
        int i2 = i + 1;
        this.f8552b = i2;
        byte b = bArr[i];
        int i3 = i2 + 1;
        this.f8552b = i3;
        byte b2 = bArr[i2];
        this.f8552b = i3 + 2;
        return (b2 & 255) | ((b & 255) << 8);
    }

    /* renamed from: u */
    public final int m5596u() {
        int m5599r = m5599r();
        if (m5599r >= 0) {
            return m5599r;
        }
        StringBuilder sb = new StringBuilder(29);
        sb.append("Top bit not zero: ");
        sb.append(m5599r);
        throw new IllegalStateException(sb.toString());
    }

    /* renamed from: v */
    public final long m5595v() {
        long m5598s = m5598s();
        if (m5598s >= 0) {
            return m5598s;
        }
        StringBuilder sb = new StringBuilder(38);
        sb.append("Top bit not zero: ");
        sb.append(m5598s);
        throw new IllegalStateException(sb.toString());
    }

    /* renamed from: w */
    public final String m5594w(int i) {
        if (i == 0) {
            return "";
        }
        int i2 = this.f8552b;
        int i3 = (i2 + i) - 1;
        String str = new String(this.f8551a, i2, (i3 >= this.f8553c || this.f8551a[i3] != 0) ? i : i - 1);
        this.f8552b += i;
        return str;
    }
}
