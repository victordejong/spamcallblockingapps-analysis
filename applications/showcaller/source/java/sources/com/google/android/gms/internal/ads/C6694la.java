package com.google.android.gms.internal.ads;

import java.nio.charset.Charset;
import java.util.Arrays;
/* renamed from: com.google.android.gms.internal.ads.la */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/la.class */
public final class C6694la {

    /* renamed from: a */
    private byte[] f25977a;

    /* renamed from: b */
    private int f25978b;

    /* renamed from: c */
    private int f25979c;

    public C6694la() {
        this.f25977a = C7101wa.f31480f;
    }

    public C6694la(int i) {
        this.f25977a = new byte[i];
        this.f25979c = i;
    }

    public C6694la(byte[] bArr) {
        this.f25977a = bArr;
        this.f25979c = bArr.length;
    }

    public C6694la(byte[] bArr, int i) {
        this.f25977a = bArr;
        this.f25979c = i;
    }

    /* renamed from: A */
    public final int m13658A() {
        byte[] bArr = this.f25977a;
        int i = this.f25978b;
        int i2 = i + 1;
        this.f25978b = i2;
        byte b = bArr[i];
        int i3 = i2 + 1;
        this.f25978b = i3;
        byte b2 = bArr[i2];
        this.f25978b = i3 + 1;
        return (bArr[i3] & 255) | (((b & 255) << 24) >> 8) | ((b2 & 255) << 8);
    }

    /* renamed from: B */
    public final long m13657B() {
        byte[] bArr = this.f25977a;
        int i = this.f25978b;
        int i2 = i + 1;
        this.f25978b = i2;
        byte b = bArr[i];
        int i3 = i2 + 1;
        this.f25978b = i3;
        byte b2 = bArr[i2];
        int i4 = i3 + 1;
        this.f25978b = i4;
        byte b3 = bArr[i3];
        this.f25978b = i4 + 1;
        return ((b2 & 255) << 16) | ((b & 255) << 24) | ((b3 & 255) << 8) | (bArr[i4] & 255);
    }

    /* renamed from: C */
    public final long m13656C() {
        byte[] bArr = this.f25977a;
        int i = this.f25978b;
        int i2 = i + 1;
        this.f25978b = i2;
        byte b = bArr[i];
        int i3 = i2 + 1;
        this.f25978b = i3;
        byte b2 = bArr[i2];
        int i4 = i3 + 1;
        this.f25978b = i4;
        byte b3 = bArr[i3];
        this.f25978b = i4 + 1;
        return ((b2 & 255) << 8) | (b & 255) | ((b3 & 255) << 16) | ((bArr[i4] & 255) << 24);
    }

    /* renamed from: D */
    public final int m13655D() {
        byte[] bArr = this.f25977a;
        int i = this.f25978b;
        int i2 = i + 1;
        this.f25978b = i2;
        byte b = bArr[i];
        int i3 = i2 + 1;
        this.f25978b = i3;
        byte b2 = bArr[i2];
        int i4 = i3 + 1;
        this.f25978b = i4;
        byte b3 = bArr[i3];
        this.f25978b = i4 + 1;
        return (bArr[i4] & 255) | ((b & 255) << 24) | ((b2 & 255) << 16) | ((b3 & 255) << 8);
    }

    /* renamed from: E */
    public final int m13654E() {
        byte[] bArr = this.f25977a;
        int i = this.f25978b;
        int i2 = i + 1;
        this.f25978b = i2;
        byte b = bArr[i];
        int i3 = i2 + 1;
        this.f25978b = i3;
        byte b2 = bArr[i2];
        int i4 = i3 + 1;
        this.f25978b = i4;
        byte b3 = bArr[i3];
        this.f25978b = i4 + 1;
        return ((bArr[i4] & 255) << 24) | (b & 255) | ((b2 & 255) << 8) | ((b3 & 255) << 16);
    }

    /* renamed from: F */
    public final long m13653F() {
        byte[] bArr = this.f25977a;
        int i = this.f25978b;
        int i2 = i + 1;
        this.f25978b = i2;
        byte b = bArr[i];
        int i3 = i2 + 1;
        this.f25978b = i3;
        byte b2 = bArr[i2];
        int i4 = i3 + 1;
        this.f25978b = i4;
        byte b3 = bArr[i3];
        int i5 = i4 + 1;
        this.f25978b = i5;
        byte b4 = bArr[i4];
        int i6 = i5 + 1;
        this.f25978b = i6;
        byte b5 = bArr[i5];
        int i7 = i6 + 1;
        this.f25978b = i7;
        byte b6 = bArr[i6];
        int i8 = i7 + 1;
        this.f25978b = i8;
        byte b7 = bArr[i7];
        this.f25978b = i8 + 1;
        return ((b2 & 255) << 48) | ((b & 255) << 56) | ((b3 & 255) << 40) | ((b4 & 255) << 32) | ((b5 & 255) << 24) | ((b6 & 255) << 16) | ((b7 & 255) << 8) | (bArr[i8] & 255);
    }

    /* renamed from: G */
    public final long m13652G() {
        byte[] bArr = this.f25977a;
        int i = this.f25978b;
        int i2 = i + 1;
        this.f25978b = i2;
        byte b = bArr[i];
        int i3 = i2 + 1;
        this.f25978b = i3;
        byte b2 = bArr[i2];
        int i4 = i3 + 1;
        this.f25978b = i4;
        byte b3 = bArr[i3];
        int i5 = i4 + 1;
        this.f25978b = i5;
        byte b4 = bArr[i4];
        int i6 = i5 + 1;
        this.f25978b = i6;
        byte b5 = bArr[i5];
        int i7 = i6 + 1;
        this.f25978b = i7;
        byte b6 = bArr[i6];
        int i8 = i7 + 1;
        this.f25978b = i8;
        byte b7 = bArr[i7];
        this.f25978b = i8 + 1;
        return ((b2 & 255) << 8) | (b & 255) | ((b3 & 255) << 16) | ((b4 & 255) << 24) | ((b5 & 255) << 32) | ((b6 & 255) << 40) | ((b7 & 255) << 48) | ((bArr[i8] & 255) << 56);
    }

    /* renamed from: H */
    public final int m13651H() {
        byte[] bArr = this.f25977a;
        int i = this.f25978b;
        int i2 = i + 1;
        this.f25978b = i2;
        byte b = bArr[i];
        int i3 = i2 + 1;
        this.f25978b = i3;
        byte b2 = bArr[i2];
        this.f25978b = i3 + 2;
        return (b2 & 255) | ((b & 255) << 8);
    }

    /* renamed from: a */
    public final int m13650a() {
        return (m13629v() << 21) | (m13629v() << 14) | (m13629v() << 7) | m13629v();
    }

    /* renamed from: b */
    public final int m13649b() {
        int m13655D = m13655D();
        if (m13655D >= 0) {
            return m13655D;
        }
        StringBuilder sb = new StringBuilder(29);
        sb.append("Top bit not zero: ");
        sb.append(m13655D);
        throw new IllegalStateException(sb.toString());
    }

    /* renamed from: c */
    public final int m13648c() {
        int m13654E = m13654E();
        if (m13654E >= 0) {
            return m13654E;
        }
        StringBuilder sb = new StringBuilder(29);
        sb.append("Top bit not zero: ");
        sb.append(m13654E);
        throw new IllegalStateException(sb.toString());
    }

    /* renamed from: d */
    public final long m13647d() {
        long m13653F = m13653F();
        if (m13653F >= 0) {
            return m13653F;
        }
        StringBuilder sb = new StringBuilder(38);
        sb.append("Top bit not zero: ");
        sb.append(m13653F);
        throw new IllegalStateException(sb.toString());
    }

    /* renamed from: e */
    public final String m13646e(int i, Charset charset) {
        String str = new String(this.f25977a, this.f25978b, i, charset);
        this.f25978b += i;
        return str;
    }

    /* renamed from: f */
    public final String m13645f(int i) {
        if (i == 0) {
            return "";
        }
        int i2 = this.f25978b;
        int i3 = (i2 + i) - 1;
        String m9705W = C7101wa.m9705W(this.f25977a, i2, (i3 >= this.f25979c || this.f25977a[i3] != 0) ? i : i - 1);
        this.f25978b += i;
        return m9705W;
    }

    /* renamed from: g */
    public final String m13644g(char c) {
        int i = this.f25979c;
        int i2 = this.f25978b;
        if (i - i2 != 0) {
            while (i2 < this.f25979c && this.f25977a[i2] != 0) {
                i2++;
            }
            byte[] bArr = this.f25977a;
            int i3 = this.f25978b;
            String m9705W = C7101wa.m9705W(bArr, i3, i2 - i3);
            this.f25978b = i2;
            if (i2 < this.f25979c) {
                this.f25978b = i2 + 1;
            }
            return m9705W;
        }
        return null;
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [long] */
    /* JADX WARN: Type inference failed for: r0v34, types: [long] */
    /* JADX WARN: Type inference failed for: r0v48, types: [long] */
    /* renamed from: h */
    public final long m13643h() {
        char c;
        int i;
        byte b;
        int i2;
        ?? r0 = this.f25977a[this.f25978b];
        int i3 = 7;
        while (true) {
            c = r0;
            i = 0;
            if (i3 < 0) {
                break;
            }
            if (((1 << i3) & r0) != 0) {
                i3--;
            } else if (i3 < 6) {
                c = r0 & (i2 - 1);
                i = 7 - i3;
            } else {
                c = r0;
                i = 0;
                if (i3 == 7) {
                    i = 1;
                    c = r0;
                }
            }
        }
        if (i == 0) {
            StringBuilder sb = new StringBuilder(55);
            sb.append("Invalid UTF-8 sequence first byte: ");
            sb.append((long) c);
            throw new NumberFormatException(sb.toString());
        }
        for (int i4 = 1; i4 < i; i4++) {
            if ((this.f25977a[this.f25978b + i4] & 192) != 128) {
                StringBuilder sb2 = new StringBuilder(62);
                sb2.append("Invalid UTF-8 sequence continuation byte: ");
                sb2.append((long) c);
                throw new NumberFormatException(sb2.toString());
            }
            c = (c << 6) | (b & 63);
        }
        this.f25978b += i;
        return c;
    }

    /* renamed from: i */
    public final void m13642i(int i) {
        byte[] bArr = this.f25977a;
        byte[] bArr2 = bArr;
        if (bArr.length < i) {
            bArr2 = new byte[i];
        }
        m13641j(bArr2, i);
    }

    /* renamed from: j */
    public final void m13641j(byte[] bArr, int i) {
        this.f25977a = bArr;
        this.f25979c = i;
        this.f25978b = 0;
    }

    /* renamed from: k */
    public final void m13640k(int i) {
        byte[] bArr = this.f25977a;
        if (i > bArr.length) {
            this.f25977a = Arrays.copyOf(bArr, i);
        }
    }

    /* renamed from: l */
    public final int m13639l() {
        return this.f25979c - this.f25978b;
    }

    /* renamed from: m */
    public final int m13638m() {
        return this.f25979c;
    }

    /* renamed from: n */
    public final void m13637n(int i) {
        boolean z = false;
        if (i >= 0) {
            z = false;
            if (i <= this.f25977a.length) {
                z = true;
            }
        }
        C7173y8.m8898a(z);
        this.f25979c = i;
    }

    /* renamed from: o */
    public final int m13636o() {
        return this.f25978b;
    }

    /* renamed from: p */
    public final void m13635p(int i) {
        boolean z = false;
        if (i >= 0) {
            z = false;
            if (i <= this.f25979c) {
                z = true;
            }
        }
        C7173y8.m8898a(z);
        this.f25978b = i;
    }

    /* renamed from: q */
    public final byte[] m13634q() {
        return this.f25977a;
    }

    /* renamed from: r */
    public final int m13633r() {
        return this.f25977a.length;
    }

    /* renamed from: s */
    public final void m13632s(int i) {
        m13635p(this.f25978b + i);
    }

    /* renamed from: t */
    public final void m13631t(C6657ka c6657ka, int i) {
        m13630u(c6657ka.f25088a, 0, i);
        c6657ka.m13951d(0);
    }

    /* renamed from: u */
    public final void m13630u(byte[] bArr, int i, int i2) {
        System.arraycopy(this.f25977a, this.f25978b, bArr, i, i2);
        this.f25978b += i2;
    }

    /* renamed from: v */
    public final int m13629v() {
        byte[] bArr = this.f25977a;
        int i = this.f25978b;
        this.f25978b = i + 1;
        return bArr[i] & 255;
    }

    /* renamed from: w */
    public final int m13628w() {
        byte[] bArr = this.f25977a;
        int i = this.f25978b;
        int i2 = i + 1;
        this.f25978b = i2;
        byte b = bArr[i];
        this.f25978b = i2 + 1;
        return (bArr[i2] & 255) | ((b & 255) << 8);
    }

    /* renamed from: x */
    public final int m13627x() {
        byte[] bArr = this.f25977a;
        int i = this.f25978b;
        int i2 = i + 1;
        this.f25978b = i2;
        byte b = bArr[i];
        this.f25978b = i2 + 1;
        return ((bArr[i2] & 255) << 8) | (b & 255);
    }

    /* renamed from: y */
    public final short m13626y() {
        byte[] bArr = this.f25977a;
        int i = this.f25978b;
        int i2 = i + 1;
        this.f25978b = i2;
        byte b = bArr[i];
        this.f25978b = i2 + 1;
        return (short) ((bArr[i2] & 255) | ((b & 255) << 8));
    }

    /* renamed from: z */
    public final int m13625z() {
        byte[] bArr = this.f25977a;
        int i = this.f25978b;
        int i2 = i + 1;
        this.f25978b = i2;
        byte b = bArr[i];
        int i3 = i2 + 1;
        this.f25978b = i3;
        byte b2 = bArr[i2];
        this.f25978b = i3 + 1;
        return (bArr[i3] & 255) | ((b & 255) << 16) | ((b2 & 255) << 8);
    }
}
