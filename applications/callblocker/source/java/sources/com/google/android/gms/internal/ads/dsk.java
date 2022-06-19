package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dsk.class */
public final class dsk {

    /* renamed from: a */
    public byte[] f15569a;

    /* renamed from: b */
    private int f15570b;

    /* renamed from: c */
    private int f15571c;

    public dsk() {
    }

    public dsk(int i) {
        this.f15569a = new byte[i];
        this.f15571c = i;
    }

    public dsk(byte[] bArr) {
        this.f15569a = bArr;
        this.f15571c = bArr.length;
    }

    /* renamed from: a */
    public final void m8740a() {
        this.f15570b = 0;
        this.f15571c = 0;
    }

    /* renamed from: a */
    public final void m8739a(int i) {
        m8738a(m8730e() < i ? new byte[i] : this.f15569a, i);
    }

    /* renamed from: a */
    public final void m8738a(byte[] bArr, int i) {
        this.f15569a = bArr;
        this.f15571c = i;
        this.f15570b = 0;
    }

    /* renamed from: a */
    public final void m8737a(byte[] bArr, int i, int i2) {
        System.arraycopy(this.f15569a, this.f15570b, bArr, i, i2);
        this.f15570b += i2;
    }

    /* renamed from: b */
    public final int m8736b() {
        return this.f15571c - this.f15570b;
    }

    /* renamed from: b */
    public final void m8735b(int i) {
        drz.m8772a(i >= 0 && i <= this.f15569a.length);
        this.f15571c = i;
    }

    /* renamed from: c */
    public final int m8734c() {
        return this.f15571c;
    }

    /* renamed from: c */
    public final void m8733c(int i) {
        drz.m8772a(i >= 0 && i <= this.f15571c);
        this.f15570b = i;
    }

    /* renamed from: d */
    public final int m8732d() {
        return this.f15570b;
    }

    /* renamed from: d */
    public final void m8731d(int i) {
        m8733c(this.f15570b + i);
    }

    /* renamed from: e */
    public final int m8730e() {
        return this.f15569a == null ? 0 : this.f15569a.length;
    }

    /* renamed from: e */
    public final String m8729e(int i) {
        String str;
        if (i == 0) {
            str = "";
        } else {
            int i2 = (this.f15570b + i) - 1;
            str = new String(this.f15569a, this.f15570b, (i2 >= this.f15571c || this.f15569a[i2] != 0) ? i : i - 1);
            this.f15570b += i;
        }
        return str;
    }

    /* renamed from: f */
    public final int m8728f() {
        byte[] bArr = this.f15569a;
        int i = this.f15570b;
        this.f15570b = i + 1;
        return bArr[i] & 255;
    }

    /* renamed from: g */
    public final int m8727g() {
        byte[] bArr = this.f15569a;
        int i = this.f15570b;
        this.f15570b = i + 1;
        byte b = bArr[i];
        byte[] bArr2 = this.f15569a;
        int i2 = this.f15570b;
        this.f15570b = i2 + 1;
        return ((b & 255) << 8) | (bArr2[i2] & 255);
    }

    /* renamed from: h */
    public final int m8726h() {
        byte[] bArr = this.f15569a;
        int i = this.f15570b;
        this.f15570b = i + 1;
        byte b = bArr[i];
        byte[] bArr2 = this.f15569a;
        int i2 = this.f15570b;
        this.f15570b = i2 + 1;
        return (b & 255) | ((bArr2[i2] & 255) << 8);
    }

    /* renamed from: i */
    public final short m8725i() {
        byte[] bArr = this.f15569a;
        int i = this.f15570b;
        this.f15570b = i + 1;
        byte b = bArr[i];
        byte[] bArr2 = this.f15569a;
        int i2 = this.f15570b;
        this.f15570b = i2 + 1;
        return (short) (((b & 255) << 8) | (bArr2[i2] & 255));
    }

    /* renamed from: j */
    public final long m8724j() {
        int i;
        byte[] bArr = this.f15569a;
        int i2 = this.f15570b;
        this.f15570b = i2 + 1;
        long j = bArr[i2];
        byte[] bArr2 = this.f15569a;
        int i3 = this.f15570b;
        this.f15570b = i3 + 1;
        long j2 = bArr2[i3];
        byte[] bArr3 = this.f15569a;
        int i4 = this.f15570b;
        this.f15570b = i4 + 1;
        long j3 = bArr3[i4];
        byte[] bArr4 = this.f15569a;
        this.f15570b = this.f15570b + 1;
        return ((j & 255) << 24) | ((j2 & 255) << 16) | ((j3 & 255) << 8) | (bArr4[i] & 255);
    }

    /* renamed from: k */
    public final long m8723k() {
        int i;
        byte[] bArr = this.f15569a;
        int i2 = this.f15570b;
        this.f15570b = i2 + 1;
        long j = bArr[i2];
        byte[] bArr2 = this.f15569a;
        int i3 = this.f15570b;
        this.f15570b = i3 + 1;
        long j2 = bArr2[i3];
        byte[] bArr3 = this.f15569a;
        int i4 = this.f15570b;
        this.f15570b = i4 + 1;
        long j3 = bArr3[i4];
        byte[] bArr4 = this.f15569a;
        this.f15570b = this.f15570b + 1;
        return (j & 255) | ((j2 & 255) << 8) | ((j3 & 255) << 16) | ((bArr4[i] & 255) << 24);
    }

    /* renamed from: l */
    public final int m8722l() {
        byte[] bArr = this.f15569a;
        int i = this.f15570b;
        this.f15570b = i + 1;
        byte b = bArr[i];
        byte[] bArr2 = this.f15569a;
        int i2 = this.f15570b;
        this.f15570b = i2 + 1;
        byte b2 = bArr2[i2];
        byte[] bArr3 = this.f15569a;
        int i3 = this.f15570b;
        this.f15570b = i3 + 1;
        byte b3 = bArr3[i3];
        byte[] bArr4 = this.f15569a;
        int i4 = this.f15570b;
        this.f15570b = i4 + 1;
        return ((b & 255) << 24) | ((b2 & 255) << 16) | ((b3 & 255) << 8) | (bArr4[i4] & 255);
    }

    /* renamed from: m */
    public final long m8721m() {
        int i;
        byte[] bArr = this.f15569a;
        int i2 = this.f15570b;
        this.f15570b = i2 + 1;
        long j = bArr[i2];
        byte[] bArr2 = this.f15569a;
        int i3 = this.f15570b;
        this.f15570b = i3 + 1;
        long j2 = bArr2[i3];
        byte[] bArr3 = this.f15569a;
        int i4 = this.f15570b;
        this.f15570b = i4 + 1;
        long j3 = bArr3[i4];
        byte[] bArr4 = this.f15569a;
        int i5 = this.f15570b;
        this.f15570b = i5 + 1;
        long j4 = bArr4[i5];
        byte[] bArr5 = this.f15569a;
        int i6 = this.f15570b;
        this.f15570b = i6 + 1;
        long j5 = bArr5[i6];
        byte[] bArr6 = this.f15569a;
        int i7 = this.f15570b;
        this.f15570b = i7 + 1;
        long j6 = bArr6[i7];
        byte[] bArr7 = this.f15569a;
        int i8 = this.f15570b;
        this.f15570b = i8 + 1;
        long j7 = bArr7[i8];
        byte[] bArr8 = this.f15569a;
        this.f15570b = this.f15570b + 1;
        return ((j & 255) << 56) | ((j2 & 255) << 48) | ((j3 & 255) << 40) | ((j4 & 255) << 32) | ((j5 & 255) << 24) | ((j6 & 255) << 16) | ((j7 & 255) << 8) | (bArr8[i] & 255);
    }

    /* renamed from: n */
    public final int m8720n() {
        byte[] bArr = this.f15569a;
        int i = this.f15570b;
        this.f15570b = i + 1;
        byte b = bArr[i];
        byte[] bArr2 = this.f15569a;
        int i2 = this.f15570b;
        this.f15570b = i2 + 1;
        byte b2 = bArr2[i2];
        this.f15570b += 2;
        return ((b & 255) << 8) | (b2 & 255);
    }

    /* renamed from: o */
    public final int m8719o() {
        int m8722l = m8722l();
        if (m8722l < 0) {
            throw new IllegalStateException(new StringBuilder(29).append("Top bit not zero: ").append(m8722l).toString());
        }
        return m8722l;
    }

    /* renamed from: p */
    public final long m8718p() {
        long m8721m = m8721m();
        if (m8721m < 0) {
            throw new IllegalStateException(new StringBuilder(38).append("Top bit not zero: ").append(m8721m).toString());
        }
        return m8721m;
    }
}
