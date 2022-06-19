package com.google.android.exoplayer2.util;

import java.nio.charset.Charset;
/* renamed from: com.google.android.exoplayer2.util.v */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/util/v.class */
public final class C5536v {

    /* renamed from: a */
    public byte[] f17941a;

    /* renamed from: b */
    private int f17942b;

    /* renamed from: c */
    private int f17943c;

    public C5536v() {
        this.f17941a = C5515h0.f17881f;
    }

    public C5536v(int i) {
        this.f17941a = new byte[i];
        this.f17943c = i;
    }

    public C5536v(byte[] bArr) {
        this.f17941a = bArr;
        this.f17943c = bArr.length;
    }

    public C5536v(byte[] bArr, int i) {
        this.f17941a = bArr;
        this.f17943c = i;
    }

    /* renamed from: A */
    public int m18692A() {
        byte[] bArr = this.f17941a;
        int i = this.f17942b;
        int i2 = i + 1;
        this.f17942b = i2;
        byte b = bArr[i];
        int i3 = i2 + 1;
        this.f17942b = i3;
        byte b2 = bArr[i2];
        this.f17942b = i3 + 2;
        return (b2 & 255) | ((b & 255) << 8);
    }

    /* renamed from: B */
    public long m18691B() {
        byte[] bArr = this.f17941a;
        int i = this.f17942b;
        int i2 = i + 1;
        this.f17942b = i2;
        long j = bArr[i];
        int i3 = i2 + 1;
        this.f17942b = i3;
        long j2 = bArr[i2];
        int i4 = i3 + 1;
        this.f17942b = i4;
        long j3 = bArr[i3];
        this.f17942b = i4 + 1;
        return ((j & 255) << 24) | ((j2 & 255) << 16) | ((j3 & 255) << 8) | (bArr[i4] & 255);
    }

    /* renamed from: C */
    public int m18690C() {
        byte[] bArr = this.f17941a;
        int i = this.f17942b;
        int i2 = i + 1;
        this.f17942b = i2;
        byte b = bArr[i];
        int i3 = i2 + 1;
        this.f17942b = i3;
        byte b2 = bArr[i2];
        this.f17942b = i3 + 1;
        return (bArr[i3] & 255) | ((b & 255) << 16) | ((b2 & 255) << 8);
    }

    /* renamed from: D */
    public int m18689D() {
        int m18668k = m18668k();
        if (m18668k >= 0) {
            return m18668k;
        }
        throw new IllegalStateException("Top bit not zero: " + m18668k);
    }

    /* renamed from: E */
    public long m18688E() {
        long m18660s = m18660s();
        if (m18660s >= 0) {
            return m18660s;
        }
        throw new IllegalStateException("Top bit not zero: " + m18660s);
    }

    /* renamed from: F */
    public int m18687F() {
        byte[] bArr = this.f17941a;
        int i = this.f17942b;
        int i2 = i + 1;
        this.f17942b = i2;
        byte b = bArr[i];
        this.f17942b = i2 + 1;
        return (bArr[i2] & 255) | ((b & 255) << 8);
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [long] */
    /* JADX WARN: Type inference failed for: r0v30, types: [long] */
    /* JADX WARN: Type inference failed for: r0v42, types: [long] */
    /* renamed from: G */
    public long m18686G() {
        int i;
        int i2;
        byte b;
        int i3;
        char c = this.f17941a[this.f17942b];
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
        if (i2 == 0) {
            throw new NumberFormatException("Invalid UTF-8 sequence first byte: " + ((long) c));
        }
        for (i = 1; i < i2; i++) {
            if ((this.f17941a[this.f17942b + i] & 192) != 128) {
                throw new NumberFormatException("Invalid UTF-8 sequence continuation byte: " + ((long) c));
            }
            c = (c << 6) | (b & 63);
        }
        this.f17942b += i2;
        return c;
    }

    /* renamed from: H */
    public void m18685H() {
        this.f17942b = 0;
        this.f17943c = 0;
    }

    /* renamed from: I */
    public void m18684I(int i) {
        m18682K(m18677b() < i ? new byte[i] : this.f17941a, i);
    }

    /* renamed from: J */
    public void m18683J(byte[] bArr) {
        m18682K(bArr, bArr.length);
    }

    /* renamed from: K */
    public void m18682K(byte[] bArr, int i) {
        this.f17941a = bArr;
        this.f17943c = i;
        this.f17942b = 0;
    }

    /* renamed from: L */
    public void m18681L(int i) {
        C5508e.m18915a(i >= 0 && i <= this.f17941a.length);
        this.f17943c = i;
    }

    /* renamed from: M */
    public void m18680M(int i) {
        C5508e.m18915a(i >= 0 && i <= this.f17943c);
        this.f17942b = i;
    }

    /* renamed from: N */
    public void m18679N(int i) {
        m18680M(this.f17942b + i);
    }

    /* renamed from: a */
    public int m18678a() {
        return this.f17943c - this.f17942b;
    }

    /* renamed from: b */
    public int m18677b() {
        return this.f17941a.length;
    }

    /* renamed from: c */
    public int m18676c() {
        return this.f17942b;
    }

    /* renamed from: d */
    public int m18675d() {
        return this.f17943c;
    }

    /* renamed from: e */
    public char m18674e() {
        byte[] bArr = this.f17941a;
        int i = this.f17942b;
        return (char) ((bArr[i + 1] & 255) | ((bArr[i] & 255) << 8));
    }

    /* renamed from: f */
    public int m18673f() {
        return this.f17941a[this.f17942b] & 255;
    }

    /* renamed from: g */
    public void m18672g(C5535u c5535u, int i) {
        m18671h(c5535u.f17937a, 0, i);
        c5535u.m18696o(0);
    }

    /* renamed from: h */
    public void m18671h(byte[] bArr, int i, int i2) {
        System.arraycopy(this.f17941a, this.f17942b, bArr, i, i2);
        this.f17942b += i2;
    }

    /* renamed from: i */
    public double m18670i() {
        return Double.longBitsToDouble(m18660s());
    }

    /* renamed from: j */
    public float m18669j() {
        return Float.intBitsToFloat(m18668k());
    }

    /* renamed from: k */
    public int m18668k() {
        byte[] bArr = this.f17941a;
        int i = this.f17942b;
        int i2 = i + 1;
        this.f17942b = i2;
        byte b = bArr[i];
        int i3 = i2 + 1;
        this.f17942b = i3;
        byte b2 = bArr[i2];
        int i4 = i3 + 1;
        this.f17942b = i4;
        byte b3 = bArr[i3];
        this.f17942b = i4 + 1;
        return (bArr[i4] & 255) | ((b & 255) << 24) | ((b2 & 255) << 16) | ((b3 & 255) << 8);
    }

    /* renamed from: l */
    public int m18667l() {
        byte[] bArr = this.f17941a;
        int i = this.f17942b;
        int i2 = i + 1;
        this.f17942b = i2;
        byte b = bArr[i];
        int i3 = i2 + 1;
        this.f17942b = i3;
        byte b2 = bArr[i2];
        this.f17942b = i3 + 1;
        return (bArr[i3] & 255) | (((b & 255) << 24) >> 8) | ((b2 & 255) << 8);
    }

    /* renamed from: m */
    public String m18666m() {
        if (m18678a() == 0) {
            return null;
        }
        int i = this.f17942b;
        while (i < this.f17943c && !C5515h0.m18850V(this.f17941a[i])) {
            i++;
        }
        int i2 = this.f17942b;
        if (i - i2 >= 3) {
            byte[] bArr = this.f17941a;
            if (bArr[i2] == -17 && bArr[i2 + 1] == -69 && bArr[i2 + 2] == -65) {
                this.f17942b = i2 + 3;
            }
        }
        byte[] bArr2 = this.f17941a;
        int i3 = this.f17942b;
        String m18801w = C5515h0.m18801w(bArr2, i3, i - i3);
        this.f17942b = i;
        int i4 = this.f17943c;
        if (i == i4) {
            return m18801w;
        }
        byte[] bArr3 = this.f17941a;
        if (bArr3[i] == 13) {
            int i5 = i + 1;
            this.f17942b = i5;
            if (i5 == i4) {
                return m18801w;
            }
        }
        int i6 = this.f17942b;
        if (bArr3[i6] == 10) {
            this.f17942b = i6 + 1;
        }
        return m18801w;
    }

    /* renamed from: n */
    public int m18665n() {
        byte[] bArr = this.f17941a;
        int i = this.f17942b;
        int i2 = i + 1;
        this.f17942b = i2;
        byte b = bArr[i];
        int i3 = i2 + 1;
        this.f17942b = i3;
        byte b2 = bArr[i2];
        int i4 = i3 + 1;
        this.f17942b = i4;
        byte b3 = bArr[i3];
        this.f17942b = i4 + 1;
        return ((bArr[i4] & 255) << 24) | (b & 255) | ((b2 & 255) << 8) | ((b3 & 255) << 16);
    }

    /* renamed from: o */
    public long m18664o() {
        byte[] bArr = this.f17941a;
        int i = this.f17942b;
        int i2 = i + 1;
        this.f17942b = i2;
        long j = bArr[i];
        int i3 = i2 + 1;
        this.f17942b = i3;
        long j2 = bArr[i2];
        int i4 = i3 + 1;
        this.f17942b = i4;
        long j3 = bArr[i3];
        int i5 = i4 + 1;
        this.f17942b = i5;
        long j4 = bArr[i4];
        int i6 = i5 + 1;
        this.f17942b = i6;
        long j5 = bArr[i5];
        int i7 = i6 + 1;
        this.f17942b = i7;
        long j6 = bArr[i6];
        int i8 = i7 + 1;
        this.f17942b = i8;
        long j7 = bArr[i7];
        this.f17942b = i8 + 1;
        return (j & 255) | ((j2 & 255) << 8) | ((j3 & 255) << 16) | ((j4 & 255) << 24) | ((j5 & 255) << 32) | ((j6 & 255) << 40) | ((j7 & 255) << 48) | ((bArr[i8] & 255) << 56);
    }

    /* renamed from: p */
    public long m18663p() {
        byte[] bArr = this.f17941a;
        int i = this.f17942b;
        int i2 = i + 1;
        this.f17942b = i2;
        long j = bArr[i];
        int i3 = i2 + 1;
        this.f17942b = i3;
        long j2 = bArr[i2];
        int i4 = i3 + 1;
        this.f17942b = i4;
        long j3 = bArr[i3];
        this.f17942b = i4 + 1;
        return (j & 255) | ((j2 & 255) << 8) | ((j3 & 255) << 16) | ((bArr[i4] & 255) << 24);
    }

    /* renamed from: q */
    public int m18662q() {
        int m18665n = m18665n();
        if (m18665n >= 0) {
            return m18665n;
        }
        throw new IllegalStateException("Top bit not zero: " + m18665n);
    }

    /* renamed from: r */
    public int m18661r() {
        byte[] bArr = this.f17941a;
        int i = this.f17942b;
        int i2 = i + 1;
        this.f17942b = i2;
        byte b = bArr[i];
        this.f17942b = i2 + 1;
        return ((bArr[i2] & 255) << 8) | (b & 255);
    }

    /* renamed from: s */
    public long m18660s() {
        byte[] bArr = this.f17941a;
        int i = this.f17942b;
        int i2 = i + 1;
        this.f17942b = i2;
        long j = bArr[i];
        int i3 = i2 + 1;
        this.f17942b = i3;
        long j2 = bArr[i2];
        int i4 = i3 + 1;
        this.f17942b = i4;
        long j3 = bArr[i3];
        int i5 = i4 + 1;
        this.f17942b = i5;
        long j4 = bArr[i4];
        int i6 = i5 + 1;
        this.f17942b = i6;
        long j5 = bArr[i5];
        int i7 = i6 + 1;
        this.f17942b = i7;
        long j6 = bArr[i6];
        int i8 = i7 + 1;
        this.f17942b = i8;
        long j7 = bArr[i7];
        this.f17942b = i8 + 1;
        return ((j & 255) << 56) | ((j2 & 255) << 48) | ((j3 & 255) << 40) | ((j4 & 255) << 32) | ((j5 & 255) << 24) | ((j6 & 255) << 16) | ((j7 & 255) << 8) | (bArr[i8] & 255);
    }

    /* renamed from: t */
    public String m18659t() {
        if (m18678a() == 0) {
            return null;
        }
        int i = this.f17942b;
        while (i < this.f17943c && this.f17941a[i] != 0) {
            i++;
        }
        byte[] bArr = this.f17941a;
        int i2 = this.f17942b;
        String m18801w = C5515h0.m18801w(bArr, i2, i - i2);
        this.f17942b = i;
        if (i < this.f17943c) {
            this.f17942b = i + 1;
        }
        return m18801w;
    }

    /* renamed from: u */
    public String m18658u(int i) {
        if (i == 0) {
            return "";
        }
        int i2 = this.f17942b;
        int i3 = (i2 + i) - 1;
        String m18801w = C5515h0.m18801w(this.f17941a, i2, (i3 >= this.f17943c || this.f17941a[i3] != 0) ? i : i - 1);
        this.f17942b += i;
        return m18801w;
    }

    /* renamed from: v */
    public short m18657v() {
        byte[] bArr = this.f17941a;
        int i = this.f17942b;
        int i2 = i + 1;
        this.f17942b = i2;
        byte b = bArr[i];
        this.f17942b = i2 + 1;
        return (short) ((bArr[i2] & 255) | ((b & 255) << 8));
    }

    /* renamed from: w */
    public String m18656w(int i) {
        return m18655x(i, Charset.forName("UTF-8"));
    }

    /* renamed from: x */
    public String m18655x(int i, Charset charset) {
        String str = new String(this.f17941a, this.f17942b, i, charset);
        this.f17942b += i;
        return str;
    }

    /* renamed from: y */
    public int m18654y() {
        return (m18653z() << 21) | (m18653z() << 14) | (m18653z() << 7) | m18653z();
    }

    /* renamed from: z */
    public int m18653z() {
        byte[] bArr = this.f17941a;
        int i = this.f17942b;
        this.f17942b = i + 1;
        return bArr[i] & 255;
    }
}
