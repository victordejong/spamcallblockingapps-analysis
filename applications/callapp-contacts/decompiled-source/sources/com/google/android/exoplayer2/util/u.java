package com.google.android.exoplayer2.util;

import com.google.common.base.d;
import java.nio.charset.Charset;
import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/util/u.class */
public final class u {

    /* renamed from: a  reason: collision with root package name */
    public byte[] f22335a;

    /* renamed from: b  reason: collision with root package name */
    public int f22336b;

    /* renamed from: c  reason: collision with root package name */
    public int f22337c;

    public u() {
        this.f22335a = af.f;
    }

    public u(int i) {
        this.f22335a = new byte[i];
        this.f22337c = i;
    }

    public u(byte[] bArr) {
        this.f22335a = bArr;
        this.f22337c = bArr.length;
    }

    public u(byte[] bArr, int i) {
        this.f22335a = bArr;
        this.f22337c = i;
    }

    public final int a() {
        return this.f22337c - this.f22336b;
    }

    public final String a(int i, Charset charset) {
        String str = new String(this.f22335a, this.f22336b, i, charset);
        this.f22336b += i;
        return str;
    }

    public final void a(int i) {
        byte[] bArr = this.f22335a;
        byte[] bArr2 = bArr;
        if (bArr.length < i) {
            bArr2 = new byte[i];
        }
        a(bArr2, i);
    }

    public final void a(t tVar, int i) {
        a(tVar.f22331a, 0, i);
        tVar.a(0);
    }

    public final void a(byte[] bArr, int i) {
        this.f22335a = bArr;
        this.f22337c = i;
        this.f22336b = 0;
    }

    public final void a(byte[] bArr, int i, int i2) {
        System.arraycopy(this.f22335a, this.f22336b, bArr, i, i2);
        this.f22336b += i2;
    }

    public final int b() {
        return this.f22335a[this.f22336b] & 255;
    }

    public final void b(int i) {
        byte[] bArr = this.f22335a;
        if (i > bArr.length) {
            this.f22335a = Arrays.copyOf(bArr, i);
        }
    }

    public final int c() {
        byte[] bArr = this.f22335a;
        int i = this.f22336b;
        this.f22336b = i + 1;
        return bArr[i] & 255;
    }

    public final void c(int i) {
        a.a(i >= 0 && i <= this.f22335a.length);
        this.f22337c = i;
    }

    public final int d() {
        byte[] bArr = this.f22335a;
        int i = this.f22336b;
        int i2 = i + 1;
        this.f22336b = i2;
        byte b2 = bArr[i];
        this.f22336b = i2 + 1;
        return (bArr[i2] & 255) | ((b2 & 255) << 8);
    }

    public final void d(int i) {
        a.a(i >= 0 && i <= this.f22337c);
        this.f22336b = i;
    }

    public final int e() {
        byte[] bArr = this.f22335a;
        int i = this.f22336b;
        int i2 = i + 1;
        this.f22336b = i2;
        byte b2 = bArr[i];
        this.f22336b = i2 + 1;
        return ((bArr[i2] & 255) << 8) | (b2 & 255);
    }

    public final void e(int i) {
        d(this.f22336b + i);
    }

    public final String f(int i) {
        return a(i, d.f31920c);
    }

    public final short f() {
        byte[] bArr = this.f22335a;
        int i = this.f22336b;
        int i2 = i + 1;
        this.f22336b = i2;
        byte b2 = bArr[i];
        this.f22336b = i2 + 1;
        return (short) (((bArr[i2] & 255) << 8) | (b2 & 255));
    }

    public final int g() {
        byte[] bArr = this.f22335a;
        int i = this.f22336b;
        int i2 = i + 1;
        this.f22336b = i2;
        byte b2 = bArr[i];
        int i3 = i2 + 1;
        this.f22336b = i3;
        byte b3 = bArr[i2];
        this.f22336b = i3 + 1;
        return (bArr[i3] & 255) | ((b2 & 255) << 16) | ((b3 & 255) << 8);
    }

    public final String g(int i) {
        if (i == 0) {
            return "";
        }
        int i2 = this.f22336b;
        int i3 = (i2 + i) - 1;
        String a2 = af.a(this.f22335a, i2, (i3 >= this.f22337c || this.f22335a[i3] != 0) ? i : i - 1);
        this.f22336b += i;
        return a2;
    }

    public final long h() {
        byte[] bArr = this.f22335a;
        int i = this.f22336b;
        int i2 = i + 1;
        this.f22336b = i2;
        long j = bArr[i];
        int i3 = i2 + 1;
        this.f22336b = i3;
        long j2 = bArr[i2];
        int i4 = i3 + 1;
        this.f22336b = i4;
        long j3 = bArr[i3];
        this.f22336b = i4 + 1;
        return ((j & 255) << 24) | ((j2 & 255) << 16) | ((j3 & 255) << 8) | (bArr[i4] & 255);
    }

    public final long i() {
        byte[] bArr = this.f22335a;
        int i = this.f22336b;
        int i2 = i + 1;
        this.f22336b = i2;
        long j = bArr[i];
        int i3 = i2 + 1;
        this.f22336b = i3;
        long j2 = bArr[i2];
        int i4 = i3 + 1;
        this.f22336b = i4;
        long j3 = bArr[i3];
        this.f22336b = i4 + 1;
        return (j & 255) | ((j2 & 255) << 8) | ((j3 & 255) << 16) | ((bArr[i4] & 255) << 24);
    }

    public final int j() {
        byte[] bArr = this.f22335a;
        int i = this.f22336b;
        int i2 = i + 1;
        this.f22336b = i2;
        byte b2 = bArr[i];
        int i3 = i2 + 1;
        this.f22336b = i3;
        byte b3 = bArr[i2];
        int i4 = i3 + 1;
        this.f22336b = i4;
        byte b4 = bArr[i3];
        this.f22336b = i4 + 1;
        return (bArr[i4] & 255) | ((b2 & 255) << 24) | ((b3 & 255) << 16) | ((b4 & 255) << 8);
    }

    public final int k() {
        byte[] bArr = this.f22335a;
        int i = this.f22336b;
        int i2 = i + 1;
        this.f22336b = i2;
        byte b2 = bArr[i];
        int i3 = i2 + 1;
        this.f22336b = i3;
        byte b3 = bArr[i2];
        int i4 = i3 + 1;
        this.f22336b = i4;
        byte b4 = bArr[i3];
        this.f22336b = i4 + 1;
        return ((bArr[i4] & 255) << 24) | (b2 & 255) | ((b3 & 255) << 8) | ((b4 & 255) << 16);
    }

    public final long l() {
        byte[] bArr = this.f22335a;
        int i = this.f22336b;
        int i2 = i + 1;
        this.f22336b = i2;
        long j = bArr[i];
        int i3 = i2 + 1;
        this.f22336b = i3;
        long j2 = bArr[i2];
        int i4 = i3 + 1;
        this.f22336b = i4;
        long j3 = bArr[i3];
        int i5 = i4 + 1;
        this.f22336b = i5;
        long j4 = bArr[i4];
        int i6 = i5 + 1;
        this.f22336b = i6;
        long j5 = bArr[i5];
        int i7 = i6 + 1;
        this.f22336b = i7;
        long j6 = bArr[i6];
        int i8 = i7 + 1;
        this.f22336b = i8;
        long j7 = bArr[i7];
        this.f22336b = i8 + 1;
        return ((j & 255) << 56) | ((j2 & 255) << 48) | ((j3 & 255) << 40) | ((j4 & 255) << 32) | ((j5 & 255) << 24) | ((j6 & 255) << 16) | ((j7 & 255) << 8) | (bArr[i8] & 255);
    }

    public final long m() {
        byte[] bArr = this.f22335a;
        int i = this.f22336b;
        int i2 = i + 1;
        this.f22336b = i2;
        long j = bArr[i];
        int i3 = i2 + 1;
        this.f22336b = i3;
        long j2 = bArr[i2];
        int i4 = i3 + 1;
        this.f22336b = i4;
        long j3 = bArr[i3];
        int i5 = i4 + 1;
        this.f22336b = i5;
        long j4 = bArr[i4];
        int i6 = i5 + 1;
        this.f22336b = i6;
        long j5 = bArr[i5];
        int i7 = i6 + 1;
        this.f22336b = i7;
        long j6 = bArr[i6];
        int i8 = i7 + 1;
        this.f22336b = i8;
        long j7 = bArr[i7];
        this.f22336b = i8 + 1;
        return (j & 255) | ((j2 & 255) << 8) | ((j3 & 255) << 16) | ((j4 & 255) << 24) | ((j5 & 255) << 32) | ((j6 & 255) << 40) | ((j7 & 255) << 48) | ((bArr[i8] & 255) << 56);
    }

    public final int n() {
        return (c() << 21) | (c() << 14) | (c() << 7) | c();
    }

    public final int o() {
        int j = j();
        if (j >= 0) {
            return j;
        }
        throw new IllegalStateException("Top bit not zero: ".concat(String.valueOf(j)));
    }

    public final int p() {
        int k = k();
        if (k >= 0) {
            return k;
        }
        throw new IllegalStateException("Top bit not zero: ".concat(String.valueOf(k)));
    }

    public final long q() {
        long l = l();
        if (l >= 0) {
            return l;
        }
        throw new IllegalStateException("Top bit not zero: ".concat(String.valueOf(l)));
    }

    public final String r() {
        return s();
    }

    public final String s() {
        if (a() == 0) {
            return null;
        }
        int i = this.f22336b;
        while (i < this.f22337c && this.f22335a[i] != 0) {
            i++;
        }
        byte[] bArr = this.f22335a;
        int i2 = this.f22336b;
        String a2 = af.a(bArr, i2, i - i2);
        this.f22336b = i;
        if (i < this.f22337c) {
            this.f22336b = i + 1;
        }
        return a2;
    }

    public final String t() {
        if (a() == 0) {
            return null;
        }
        int i = this.f22336b;
        while (i < this.f22337c && !af.a((int) this.f22335a[i])) {
            i++;
        }
        int i2 = this.f22336b;
        if (i - i2 >= 3) {
            byte[] bArr = this.f22335a;
            if (bArr[i2] == -17 && bArr[i2 + 1] == -69 && bArr[i2 + 2] == -65) {
                this.f22336b = i2 + 3;
            }
        }
        byte[] bArr2 = this.f22335a;
        int i3 = this.f22336b;
        String a2 = af.a(bArr2, i3, i - i3);
        this.f22336b = i;
        int i4 = this.f22337c;
        if (i == i4) {
            return a2;
        }
        byte[] bArr3 = this.f22335a;
        if (bArr3[i] == 13) {
            int i5 = i + 1;
            this.f22336b = i5;
            if (i5 == i4) {
                return a2;
            }
        }
        int i6 = this.f22336b;
        if (bArr3[i6] == 10) {
            this.f22336b = i6 + 1;
        }
        return a2;
    }

    public final long u() {
        int i;
        int i2;
        byte b2;
        int i3;
        long j = this.f22335a[this.f22336b];
        int i4 = 7;
        while (true) {
            if (i4 < 0) {
                break;
            }
            if (((1 << i4) & j) != 0) {
                i4--;
            } else if (i4 < 6) {
                j &= i3 - 1;
                i2 = 7 - i4;
            } else if (i4 == 7) {
                i2 = 1;
            }
        }
        i2 = 0;
        if (i2 != 0) {
            for (i = 1; i < i2; i++) {
                if ((this.f22335a[this.f22336b + i] & 192) == 128) {
                    j = (j << 6) | (b2 & 63);
                } else {
                    throw new NumberFormatException("Invalid UTF-8 sequence continuation byte: ".concat(String.valueOf(j)));
                }
            }
            this.f22336b += i2;
            return j;
        }
        throw new NumberFormatException("Invalid UTF-8 sequence first byte: ".concat(String.valueOf(j)));
    }
}
