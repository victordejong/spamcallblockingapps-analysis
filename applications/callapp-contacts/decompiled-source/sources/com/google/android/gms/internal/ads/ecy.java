package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ecy.class */
public final class ecy {

    /* renamed from: a  reason: collision with root package name */
    public byte[] f27649a;

    /* renamed from: b  reason: collision with root package name */
    int f27650b;

    /* renamed from: c  reason: collision with root package name */
    int f27651c;

    public ecy() {
    }

    public ecy(int i) {
        this.f27649a = new byte[i];
        this.f27651c = i;
    }

    public ecy(byte[] bArr) {
        this.f27649a = bArr;
        this.f27651c = bArr.length;
    }

    public final void a() {
        this.f27650b = 0;
        this.f27651c = 0;
    }

    public final void a(int i) {
        a(c() < i ? new byte[i] : this.f27649a, i);
    }

    public final void a(byte[] bArr, int i) {
        this.f27649a = bArr;
        this.f27651c = i;
        this.f27650b = 0;
    }

    public final void a(byte[] bArr, int i, int i2) {
        System.arraycopy(this.f27649a, this.f27650b, bArr, i, i2);
        this.f27650b += i2;
    }

    public final int b() {
        return this.f27651c - this.f27650b;
    }

    public final void b(int i) {
        ecr.a(i >= 0 && i <= this.f27649a.length);
        this.f27651c = i;
    }

    public final int c() {
        byte[] bArr = this.f27649a;
        if (bArr == null) {
            return 0;
        }
        return bArr.length;
    }

    public final void c(int i) {
        ecr.a(i >= 0 && i <= this.f27651c);
        this.f27650b = i;
    }

    public final int d() {
        byte[] bArr = this.f27649a;
        int i = this.f27650b;
        this.f27650b = i + 1;
        return bArr[i] & 255;
    }

    public final void d(int i) {
        c(this.f27650b + i);
    }

    public final int e() {
        byte[] bArr = this.f27649a;
        int i = this.f27650b;
        int i2 = i + 1;
        this.f27650b = i2;
        byte b2 = bArr[i];
        this.f27650b = i2 + 1;
        return (bArr[i2] & 255) | ((b2 & 255) << 8);
    }

    public final String e(int i) {
        if (i == 0) {
            return "";
        }
        int i2 = (this.f27650b + i) - 1;
        String str = new String(this.f27649a, this.f27650b, (i2 >= this.f27651c || this.f27649a[i2] != 0) ? i : i - 1);
        this.f27650b += i;
        return str;
    }

    public final long f() {
        byte[] bArr = this.f27649a;
        int i = this.f27650b;
        int i2 = i + 1;
        this.f27650b = i2;
        long j = bArr[i];
        int i3 = i2 + 1;
        this.f27650b = i3;
        long j2 = bArr[i2];
        int i4 = i3 + 1;
        this.f27650b = i4;
        long j3 = bArr[i3];
        this.f27650b = i4 + 1;
        return ((j & 255) << 24) | ((j2 & 255) << 16) | ((j3 & 255) << 8) | (bArr[i4] & 255);
    }

    public final int g() {
        byte[] bArr = this.f27649a;
        int i = this.f27650b;
        int i2 = i + 1;
        this.f27650b = i2;
        byte b2 = bArr[i];
        int i3 = i2 + 1;
        this.f27650b = i3;
        byte b3 = bArr[i2];
        int i4 = i3 + 1;
        this.f27650b = i4;
        byte b4 = bArr[i3];
        this.f27650b = i4 + 1;
        return (bArr[i4] & 255) | ((b2 & 255) << 24) | ((b3 & 255) << 16) | ((b4 & 255) << 8);
    }

    public final long h() {
        byte[] bArr = this.f27649a;
        int i = this.f27650b;
        int i2 = i + 1;
        this.f27650b = i2;
        long j = bArr[i];
        int i3 = i2 + 1;
        this.f27650b = i3;
        long j2 = bArr[i2];
        int i4 = i3 + 1;
        this.f27650b = i4;
        long j3 = bArr[i3];
        int i5 = i4 + 1;
        this.f27650b = i5;
        long j4 = bArr[i4];
        int i6 = i5 + 1;
        this.f27650b = i6;
        long j5 = bArr[i5];
        int i7 = i6 + 1;
        this.f27650b = i7;
        long j6 = bArr[i6];
        int i8 = i7 + 1;
        this.f27650b = i8;
        long j7 = bArr[i7];
        this.f27650b = i8 + 1;
        return ((j & 255) << 56) | ((j2 & 255) << 48) | ((j3 & 255) << 40) | ((j4 & 255) << 32) | ((j5 & 255) << 24) | ((j6 & 255) << 16) | ((j7 & 255) << 8) | (bArr[i8] & 255);
    }

    public final int i() {
        int g = g();
        if (g >= 0) {
            return g;
        }
        StringBuilder sb = new StringBuilder(29);
        sb.append("Top bit not zero: ");
        sb.append(g);
        throw new IllegalStateException(sb.toString());
    }

    public final long j() {
        long h = h();
        if (h >= 0) {
            return h;
        }
        StringBuilder sb = new StringBuilder(38);
        sb.append("Top bit not zero: ");
        sb.append(h);
        throw new IllegalStateException(sb.toString());
    }

    public final String k() {
        if (b() == 0) {
            return null;
        }
        int i = this.f27650b;
        while (i < this.f27651c && this.f27649a[i] != 0) {
            i++;
        }
        byte[] bArr = this.f27649a;
        int i2 = this.f27650b;
        String str = new String(bArr, i2, i - i2);
        this.f27650b = i;
        if (i < this.f27651c) {
            this.f27650b = i + 1;
        }
        return str;
    }
}
