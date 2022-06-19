package com.google.android.exoplayer2.util;

import com.google.common.base.C15374d;
import java.nio.charset.Charset;
import java.util.Arrays;
/* renamed from: com.google.android.exoplayer2.util.u */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/util/u.class */
public final class C11628u {

    /* renamed from: a */
    public byte[] f38733a;

    /* renamed from: b */
    public int f38734b;

    /* renamed from: c */
    public int f38735c;

    public C11628u() {
        this.f38733a = C11599af.f38653f;
    }

    public C11628u(int i) {
        this.f38733a = new byte[i];
        this.f38735c = i;
    }

    public C11628u(byte[] bArr) {
        this.f38733a = bArr;
        this.f38735c = bArr.length;
    }

    public C11628u(byte[] bArr, int i) {
        this.f38733a = bArr;
        this.f38735c = i;
    }

    /* renamed from: a */
    public final int m19812a() {
        return this.f38735c - this.f38734b;
    }

    /* renamed from: a */
    public final String m19810a(int i, Charset charset) {
        String str = new String(this.f38733a, this.f38734b, i, charset);
        this.f38734b += i;
        return str;
    }

    /* renamed from: a */
    public final void m19811a(int i) {
        byte[] bArr = this.f38733a;
        byte[] bArr2 = bArr;
        if (bArr.length < i) {
            bArr2 = new byte[i];
        }
        m19808a(bArr2, i);
    }

    /* renamed from: a */
    public final void m19809a(C11627t c11627t, int i) {
        m19807a(c11627t.f38729a, 0, i);
        c11627t.m19826a(0);
    }

    /* renamed from: a */
    public final void m19808a(byte[] bArr, int i) {
        this.f38733a = bArr;
        this.f38735c = i;
        this.f38734b = 0;
    }

    /* renamed from: a */
    public final void m19807a(byte[] bArr, int i, int i2) {
        System.arraycopy(this.f38733a, this.f38734b, bArr, i, i2);
        this.f38734b += i2;
    }

    /* renamed from: b */
    public final int m19806b() {
        return this.f38733a[this.f38734b] & 255;
    }

    /* renamed from: b */
    public final void m19805b(int i) {
        byte[] bArr = this.f38733a;
        if (i > bArr.length) {
            this.f38733a = Arrays.copyOf(bArr, i);
        }
    }

    /* renamed from: c */
    public final int m19804c() {
        byte[] bArr = this.f38733a;
        int i = this.f38734b;
        this.f38734b = i + 1;
        return bArr[i] & 255;
    }

    /* renamed from: c */
    public final void m19803c(int i) {
        C11593a.m20022a(i >= 0 && i <= this.f38733a.length);
        this.f38735c = i;
    }

    /* renamed from: d */
    public final int m19802d() {
        byte[] bArr = this.f38733a;
        int i = this.f38734b;
        int i2 = i + 1;
        this.f38734b = i2;
        byte b = bArr[i];
        this.f38734b = i2 + 1;
        return (bArr[i2] & 255) | ((b & 255) << 8);
    }

    /* renamed from: d */
    public final void m19801d(int i) {
        C11593a.m20022a(i >= 0 && i <= this.f38735c);
        this.f38734b = i;
    }

    /* renamed from: e */
    public final int m19800e() {
        byte[] bArr = this.f38733a;
        int i = this.f38734b;
        int i2 = i + 1;
        this.f38734b = i2;
        byte b = bArr[i];
        this.f38734b = i2 + 1;
        return ((bArr[i2] & 255) << 8) | (b & 255);
    }

    /* renamed from: e */
    public final void m19799e(int i) {
        m19801d(this.f38734b + i);
    }

    /* renamed from: f */
    public final String m19797f(int i) {
        return m19810a(i, C15374d.f55620c);
    }

    /* renamed from: f */
    public final short m19798f() {
        byte[] bArr = this.f38733a;
        int i = this.f38734b;
        int i2 = i + 1;
        this.f38734b = i2;
        byte b = bArr[i];
        this.f38734b = i2 + 1;
        return (short) (((bArr[i2] & 255) << 8) | (b & 255));
    }

    /* renamed from: g */
    public final int m19796g() {
        byte[] bArr = this.f38733a;
        int i = this.f38734b;
        int i2 = i + 1;
        this.f38734b = i2;
        byte b = bArr[i];
        int i3 = i2 + 1;
        this.f38734b = i3;
        byte b2 = bArr[i2];
        this.f38734b = i3 + 1;
        return (bArr[i3] & 255) | ((b & 255) << 16) | ((b2 & 255) << 8);
    }

    /* renamed from: g */
    public final String m19795g(int i) {
        if (i == 0) {
            return "";
        }
        int i2 = this.f38734b;
        int i3 = (i2 + i) - 1;
        String m19960a = C11599af.m19960a(this.f38733a, i2, (i3 >= this.f38735c || this.f38733a[i3] != 0) ? i : i - 1);
        this.f38734b += i;
        return m19960a;
    }

    /* renamed from: h */
    public final long m19794h() {
        byte[] bArr = this.f38733a;
        int i = this.f38734b;
        int i2 = i + 1;
        this.f38734b = i2;
        long j = bArr[i];
        int i3 = i2 + 1;
        this.f38734b = i3;
        long j2 = bArr[i2];
        int i4 = i3 + 1;
        this.f38734b = i4;
        long j3 = bArr[i3];
        this.f38734b = i4 + 1;
        return ((j & 255) << 24) | ((j2 & 255) << 16) | ((j3 & 255) << 8) | (bArr[i4] & 255);
    }

    /* renamed from: i */
    public final long m19793i() {
        byte[] bArr = this.f38733a;
        int i = this.f38734b;
        int i2 = i + 1;
        this.f38734b = i2;
        long j = bArr[i];
        int i3 = i2 + 1;
        this.f38734b = i3;
        long j2 = bArr[i2];
        int i4 = i3 + 1;
        this.f38734b = i4;
        long j3 = bArr[i3];
        this.f38734b = i4 + 1;
        return (j & 255) | ((j2 & 255) << 8) | ((j3 & 255) << 16) | ((bArr[i4] & 255) << 24);
    }

    /* renamed from: j */
    public final int m19792j() {
        byte[] bArr = this.f38733a;
        int i = this.f38734b;
        int i2 = i + 1;
        this.f38734b = i2;
        byte b = bArr[i];
        int i3 = i2 + 1;
        this.f38734b = i3;
        byte b2 = bArr[i2];
        int i4 = i3 + 1;
        this.f38734b = i4;
        byte b3 = bArr[i3];
        this.f38734b = i4 + 1;
        return (bArr[i4] & 255) | ((b & 255) << 24) | ((b2 & 255) << 16) | ((b3 & 255) << 8);
    }

    /* renamed from: k */
    public final int m19791k() {
        byte[] bArr = this.f38733a;
        int i = this.f38734b;
        int i2 = i + 1;
        this.f38734b = i2;
        byte b = bArr[i];
        int i3 = i2 + 1;
        this.f38734b = i3;
        byte b2 = bArr[i2];
        int i4 = i3 + 1;
        this.f38734b = i4;
        byte b3 = bArr[i3];
        this.f38734b = i4 + 1;
        return ((bArr[i4] & 255) << 24) | (b & 255) | ((b2 & 255) << 8) | ((b3 & 255) << 16);
    }

    /* renamed from: l */
    public final long m19790l() {
        byte[] bArr = this.f38733a;
        int i = this.f38734b;
        int i2 = i + 1;
        this.f38734b = i2;
        long j = bArr[i];
        int i3 = i2 + 1;
        this.f38734b = i3;
        long j2 = bArr[i2];
        int i4 = i3 + 1;
        this.f38734b = i4;
        long j3 = bArr[i3];
        int i5 = i4 + 1;
        this.f38734b = i5;
        long j4 = bArr[i4];
        int i6 = i5 + 1;
        this.f38734b = i6;
        long j5 = bArr[i5];
        int i7 = i6 + 1;
        this.f38734b = i7;
        long j6 = bArr[i6];
        int i8 = i7 + 1;
        this.f38734b = i8;
        long j7 = bArr[i7];
        this.f38734b = i8 + 1;
        return ((j & 255) << 56) | ((j2 & 255) << 48) | ((j3 & 255) << 40) | ((j4 & 255) << 32) | ((j5 & 255) << 24) | ((j6 & 255) << 16) | ((j7 & 255) << 8) | (bArr[i8] & 255);
    }

    /* renamed from: m */
    public final long m19789m() {
        byte[] bArr = this.f38733a;
        int i = this.f38734b;
        int i2 = i + 1;
        this.f38734b = i2;
        long j = bArr[i];
        int i3 = i2 + 1;
        this.f38734b = i3;
        long j2 = bArr[i2];
        int i4 = i3 + 1;
        this.f38734b = i4;
        long j3 = bArr[i3];
        int i5 = i4 + 1;
        this.f38734b = i5;
        long j4 = bArr[i4];
        int i6 = i5 + 1;
        this.f38734b = i6;
        long j5 = bArr[i5];
        int i7 = i6 + 1;
        this.f38734b = i7;
        long j6 = bArr[i6];
        int i8 = i7 + 1;
        this.f38734b = i8;
        long j7 = bArr[i7];
        this.f38734b = i8 + 1;
        return (j & 255) | ((j2 & 255) << 8) | ((j3 & 255) << 16) | ((j4 & 255) << 24) | ((j5 & 255) << 32) | ((j6 & 255) << 40) | ((j7 & 255) << 48) | ((bArr[i8] & 255) << 56);
    }

    /* renamed from: n */
    public final int m19788n() {
        return (m19804c() << 21) | (m19804c() << 14) | (m19804c() << 7) | m19804c();
    }

    /* renamed from: o */
    public final int m19787o() {
        int m19792j = m19792j();
        if (m19792j >= 0) {
            return m19792j;
        }
        throw new IllegalStateException("Top bit not zero: ".concat(String.valueOf(m19792j)));
    }

    /* renamed from: p */
    public final int m19786p() {
        int m19791k = m19791k();
        if (m19791k >= 0) {
            return m19791k;
        }
        throw new IllegalStateException("Top bit not zero: ".concat(String.valueOf(m19791k)));
    }

    /* renamed from: q */
    public final long m19785q() {
        long m19790l = m19790l();
        if (m19790l >= 0) {
            return m19790l;
        }
        throw new IllegalStateException("Top bit not zero: ".concat(String.valueOf(m19790l)));
    }

    /* renamed from: r */
    public final String m19784r() {
        return m19783s();
    }

    /* renamed from: s */
    public final String m19783s() {
        if (m19812a() == 0) {
            return null;
        }
        int i = this.f38734b;
        while (i < this.f38735c && this.f38733a[i] != 0) {
            i++;
        }
        byte[] bArr = this.f38733a;
        int i2 = this.f38734b;
        String m19960a = C11599af.m19960a(bArr, i2, i - i2);
        this.f38734b = i;
        if (i < this.f38735c) {
            this.f38734b = i + 1;
        }
        return m19960a;
    }

    /* renamed from: t */
    public final String m19782t() {
        if (m19812a() == 0) {
            return null;
        }
        int i = this.f38734b;
        while (i < this.f38735c && !C11599af.m19999a((int) this.f38733a[i])) {
            i++;
        }
        int i2 = this.f38734b;
        if (i - i2 >= 3) {
            byte[] bArr = this.f38733a;
            if (bArr[i2] == -17 && bArr[i2 + 1] == -69 && bArr[i2 + 2] == -65) {
                this.f38734b = i2 + 3;
            }
        }
        byte[] bArr2 = this.f38733a;
        int i3 = this.f38734b;
        String m19960a = C11599af.m19960a(bArr2, i3, i - i3);
        this.f38734b = i;
        int i4 = this.f38735c;
        if (i == i4) {
            return m19960a;
        }
        byte[] bArr3 = this.f38733a;
        if (bArr3[i] == 13) {
            int i5 = i + 1;
            this.f38734b = i5;
            if (i5 == i4) {
                return m19960a;
            }
        }
        int i6 = this.f38734b;
        if (bArr3[i6] == 10) {
            this.f38734b = i6 + 1;
        }
        return m19960a;
    }

    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    /* JADX WARN: Type inference failed for: r0v3, types: [long] */
    /* JADX WARN: Type inference failed for: r0v32, types: [long] */
    /* renamed from: u */
    public final long m19781u() {
        int i;
        int i2;
        byte b;
        int i3;
        char c = this.f38733a[this.f38734b];
        int i4 = 7;
        while (true) {
            if (i4 < 0) {
                break;
            }
            if (((1 << i4) & c) != 0) {
                i4--;
            } else if (i4 < 6) {
                c &= i3 - 1;
                i2 = 7 - i4;
            } else if (i4 == 7) {
                i2 = 1;
            }
        }
        i2 = 0;
        if (i2 != 0) {
            for (i = 1; i < i2; i++) {
                if ((this.f38733a[this.f38734b + i] & 192) != 128) {
                    throw new NumberFormatException("Invalid UTF-8 sequence continuation byte: ".concat(String.valueOf((long) c)));
                }
                c = (c << 6) | (b & 63);
            }
            this.f38734b += i2;
            return c;
        }
        throw new NumberFormatException("Invalid UTF-8 sequence first byte: ".concat(String.valueOf((long) c)));
    }
}
