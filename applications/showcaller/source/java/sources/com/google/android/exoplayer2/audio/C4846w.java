package com.google.android.exoplayer2.audio;

import com.google.android.exoplayer2.util.C5508e;
import java.nio.ShortBuffer;
import java.util.Arrays;
/* renamed from: com.google.android.exoplayer2.audio.w */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/audio/w.class */
final class C4846w {

    /* renamed from: a */
    private final int f14708a;

    /* renamed from: b */
    private final int f14709b;

    /* renamed from: c */
    private final float f14710c;

    /* renamed from: d */
    private final float f14711d;

    /* renamed from: e */
    private final float f14712e;

    /* renamed from: f */
    private final int f14713f;

    /* renamed from: g */
    private final int f14714g;

    /* renamed from: h */
    private final int f14715h;

    /* renamed from: i */
    private final short[] f14716i;

    /* renamed from: j */
    private short[] f14717j;

    /* renamed from: k */
    private int f14718k;

    /* renamed from: l */
    private short[] f14719l;

    /* renamed from: m */
    private int f14720m;

    /* renamed from: n */
    private short[] f14721n;

    /* renamed from: o */
    private int f14722o;

    /* renamed from: p */
    private int f14723p;

    /* renamed from: q */
    private int f14724q;

    /* renamed from: r */
    private int f14725r;

    /* renamed from: s */
    private int f14726s;

    /* renamed from: t */
    private int f14727t;

    /* renamed from: u */
    private int f14728u;

    /* renamed from: v */
    private int f14729v;

    public C4846w(int i, int i2, float f, float f2, int i3) {
        this.f14708a = i;
        this.f14709b = i2;
        this.f14710c = f;
        this.f14711d = f2;
        this.f14712e = i / i3;
        this.f14713f = i / 400;
        int i4 = i / 65;
        this.f14714g = i4;
        int i5 = i4 * 2;
        this.f14715h = i5;
        this.f14716i = new short[i5];
        this.f14717j = new short[i5 * i2];
        this.f14719l = new short[i5 * i2];
        this.f14721n = new short[i5 * i2];
    }

    /* renamed from: a */
    private void m21478a(float f, int i) {
        int i2;
        int i3;
        if (this.f14720m == i) {
            return;
        }
        int i4 = this.f14708a;
        int i5 = (int) (i4 / f);
        while (true) {
            if (i5 <= 16384 && i4 <= 16384) {
                break;
            }
            i5 /= 2;
            i4 /= 2;
        }
        m21465n(i);
        int i6 = 0;
        while (true) {
            int i7 = this.f14722o;
            boolean z = true;
            if (i6 >= i7 - 1) {
                m21459t(i7 - 1);
                return;
            }
            while (true) {
                i2 = this.f14723p;
                i3 = this.f14724q;
                if ((i2 + 1) * i5 <= i3 * i4) {
                    break;
                }
                this.f14719l = m21473f(this.f14719l, this.f14720m, 1);
                int i8 = 0;
                while (true) {
                    int i9 = this.f14709b;
                    if (i8 < i9) {
                        this.f14719l[(this.f14720m * i9) + i8] = m21466m(this.f14721n, (i9 * i6) + i8, i4, i5);
                        i8++;
                    }
                }
                this.f14724q++;
                this.f14720m++;
            }
            int i10 = i2 + 1;
            this.f14723p = i10;
            if (i10 == i4) {
                this.f14723p = 0;
                if (i3 != i5) {
                    z = false;
                }
                C5508e.m18910f(z);
                this.f14724q = 0;
            }
            i6++;
        }
    }

    /* renamed from: b */
    private void m21477b(float f) {
        int m21457v;
        int i;
        int i2 = this.f14718k;
        if (i2 < this.f14715h) {
            return;
        }
        int i3 = 0;
        do {
            if (this.f14725r > 0) {
                m21457v = m21476c(i3);
            } else {
                int m21472g = m21472g(this.f14717j, i3);
                m21457v = ((double) f) > 1.0d ? m21472g + m21457v(this.f14717j, i3, f, m21472g) : m21467l(this.f14717j, i3, f, m21472g);
            }
            i = i3 + m21457v;
            i3 = i;
        } while (this.f14715h + i <= i2);
        m21458u(i);
    }

    /* renamed from: c */
    private int m21476c(int i) {
        int min = Math.min(this.f14715h, this.f14725r);
        m21475d(this.f14717j, i, min);
        this.f14725r -= min;
        return min;
    }

    /* renamed from: d */
    private void m21475d(short[] sArr, int i, int i2) {
        short[] m21473f = m21473f(this.f14719l, this.f14720m, i2);
        this.f14719l = m21473f;
        int i3 = this.f14709b;
        System.arraycopy(sArr, i * i3, m21473f, this.f14720m * i3, i3 * i2);
        this.f14720m += i2;
    }

    /* renamed from: e */
    private void m21474e(short[] sArr, int i, int i2) {
        int i3 = this.f14715h / i2;
        int i4 = this.f14709b;
        int i5 = i2 * i4;
        for (int i6 = 0; i6 < i3; i6++) {
            short s = 0;
            for (int i7 = 0; i7 < i5; i7++) {
                s += sArr[(i6 * i5) + (i * i4) + i7];
            }
            this.f14716i[i6] = (short) (s / i5);
        }
    }

    /* renamed from: f */
    private short[] m21473f(short[] sArr, int i, int i2) {
        int length = sArr.length;
        int i3 = this.f14709b;
        int i4 = length / i3;
        return i + i2 <= i4 ? sArr : Arrays.copyOf(sArr, (((i4 * 3) / 2) + i2) * i3);
    }

    /* renamed from: g */
    private int m21472g(short[] sArr, int i) {
        int i2;
        int i3 = this.f14708a;
        int i4 = i3 > 4000 ? i3 / 4000 : 1;
        if (this.f14709b == 1 && i4 == 1) {
            i2 = m21471h(sArr, i, this.f14713f, this.f14714g);
        } else {
            m21474e(sArr, i, i4);
            int m21471h = m21471h(this.f14716i, 0, this.f14713f / i4, this.f14714g / i4);
            if (i4 != 1) {
                int i5 = m21471h * i4;
                int i6 = i4 * 4;
                int i7 = i5 - i6;
                int i8 = i5 + i6;
                int i9 = this.f14713f;
                int i10 = i7;
                if (i7 < i9) {
                    i10 = i9;
                }
                int i11 = this.f14714g;
                int i12 = i8;
                if (i8 > i11) {
                    i12 = i11;
                }
                if (this.f14709b == 1) {
                    i2 = m21471h(sArr, i, i10, i12);
                } else {
                    m21474e(sArr, i, 1);
                    i2 = m21471h(this.f14716i, 0, i10, i12);
                }
            } else {
                i2 = m21471h;
            }
        }
        int i13 = m21463p(this.f14728u, this.f14729v) ? this.f14726s : i2;
        this.f14727t = this.f14728u;
        this.f14726s = i2;
        return i13;
    }

    /* renamed from: h */
    private int m21471h(short[] sArr, int i, int i2, int i3) {
        int i4 = i * this.f14709b;
        int i5 = 1;
        int i6 = 255;
        int i7 = 0;
        int i8 = 0;
        while (true) {
            int i9 = i8;
            if (i2 > i3) {
                this.f14728u = i5 / i7;
                this.f14729v = i9 / i6;
                return i7;
            }
            int i10 = 0;
            for (int i11 = 0; i11 < i2; i11++) {
                i10 += Math.abs(sArr[i4 + i11] - sArr[(i4 + i2) + i11]);
            }
            int i12 = i5;
            int i13 = i7;
            if (i10 * i7 < i5 * i2) {
                i13 = i2;
                i12 = i10;
            }
            int i14 = i6;
            int i15 = i9;
            if (i10 * i6 > i9 * i2) {
                i14 = i2;
                i15 = i10;
            }
            i2++;
            i5 = i12;
            i6 = i14;
            i7 = i13;
            i8 = i15;
        }
    }

    /* renamed from: l */
    private int m21467l(short[] sArr, int i, float f, int i2) {
        int i3;
        if (f < 0.5f) {
            i3 = (int) ((i2 * f) / (1.0f - f));
        } else {
            this.f14725r = (int) ((i2 * ((2.0f * f) - 1.0f)) / (1.0f - f));
            i3 = i2;
        }
        int i4 = i2 + i3;
        short[] m21473f = m21473f(this.f14719l, this.f14720m, i4);
        this.f14719l = m21473f;
        int i5 = this.f14709b;
        System.arraycopy(sArr, i * i5, m21473f, this.f14720m * i5, i5 * i2);
        m21464o(i3, this.f14709b, this.f14719l, this.f14720m + i2, sArr, i + i2, sArr, i);
        this.f14720m += i4;
        return i3;
    }

    /* renamed from: m */
    private short m21466m(short[] sArr, int i, int i2, int i3) {
        short s = sArr[i];
        short s2 = sArr[i + this.f14709b];
        int i4 = this.f14724q;
        int i5 = this.f14723p;
        int i6 = (i5 + 1) * i3;
        int i7 = i6 - (i4 * i2);
        int i8 = i6 - (i5 * i3);
        return (short) (((s * i7) + ((i8 - i7) * s2)) / i8);
    }

    /* renamed from: n */
    private void m21465n(int i) {
        int i2 = this.f14720m - i;
        short[] m21473f = m21473f(this.f14721n, this.f14722o, i2);
        this.f14721n = m21473f;
        short[] sArr = this.f14719l;
        int i3 = this.f14709b;
        System.arraycopy(sArr, i * i3, m21473f, this.f14722o * i3, i3 * i2);
        this.f14720m = i;
        this.f14722o += i2;
    }

    /* renamed from: o */
    private static void m21464o(int i, int i2, short[] sArr, int i3, short[] sArr2, int i4, short[] sArr3, int i5) {
        for (int i6 = 0; i6 < i2; i6++) {
            int i7 = (i3 * i2) + i6;
            int i8 = (i5 * i2) + i6;
            int i9 = (i4 * i2) + i6;
            for (int i10 = 0; i10 < i; i10++) {
                sArr[i7] = (short) (((sArr2[i9] * (i - i10)) + (sArr3[i8] * i10)) / i);
                i7 += i2;
                i9 += i2;
                i8 += i2;
            }
        }
    }

    /* renamed from: p */
    private boolean m21463p(int i, int i2) {
        return i != 0 && this.f14726s != 0 && i2 <= i * 3 && i * 2 > this.f14727t * 3;
    }

    /* renamed from: q */
    private void m21462q() {
        int i = this.f14720m;
        float f = this.f14710c;
        float f2 = this.f14711d;
        float f3 = f / f2;
        float f4 = this.f14712e * f2;
        double d = f3;
        if (d > 1.00001d || d < 0.99999d) {
            m21477b(f3);
        } else {
            m21475d(this.f14717j, 0, this.f14718k);
            this.f14718k = 0;
        }
        if (f4 != 1.0f) {
            m21478a(f4, i);
        }
    }

    /* renamed from: t */
    private void m21459t(int i) {
        if (i == 0) {
            return;
        }
        short[] sArr = this.f14721n;
        int i2 = this.f14709b;
        System.arraycopy(sArr, i * i2, sArr, 0, (this.f14722o - i) * i2);
        this.f14722o -= i;
    }

    /* renamed from: u */
    private void m21458u(int i) {
        int i2 = this.f14718k - i;
        short[] sArr = this.f14717j;
        int i3 = this.f14709b;
        System.arraycopy(sArr, i * i3, sArr, 0, i3 * i2);
        this.f14718k = i2;
    }

    /* renamed from: v */
    private int m21457v(short[] sArr, int i, float f, int i2) {
        int i3;
        if (f >= 2.0f) {
            i3 = (int) (i2 / (f - 1.0f));
        } else {
            this.f14725r = (int) ((i2 * (2.0f - f)) / (f - 1.0f));
            i3 = i2;
        }
        short[] m21473f = m21473f(this.f14719l, this.f14720m, i3);
        this.f14719l = m21473f;
        m21464o(i3, this.f14709b, m21473f, this.f14720m, sArr, i, sArr, i + i2);
        this.f14720m += i3;
        return i3;
    }

    /* renamed from: i */
    public void m21470i() {
        this.f14718k = 0;
        this.f14720m = 0;
        this.f14722o = 0;
        this.f14723p = 0;
        this.f14724q = 0;
        this.f14725r = 0;
        this.f14726s = 0;
        this.f14727t = 0;
        this.f14728u = 0;
        this.f14729v = 0;
    }

    /* renamed from: j */
    public void m21469j(ShortBuffer shortBuffer) {
        int min = Math.min(shortBuffer.remaining() / this.f14709b, this.f14720m);
        shortBuffer.put(this.f14719l, 0, this.f14709b * min);
        int i = this.f14720m - min;
        this.f14720m = i;
        short[] sArr = this.f14719l;
        int i2 = this.f14709b;
        System.arraycopy(sArr, min * i2, sArr, 0, i * i2);
    }

    /* renamed from: k */
    public int m21468k() {
        return this.f14720m * this.f14709b * 2;
    }

    /* renamed from: r */
    public void m21461r() {
        int i;
        int i2 = this.f14718k;
        float f = this.f14710c;
        float f2 = this.f14711d;
        int i3 = this.f14720m + ((int) ((((i2 / (f / f2)) + this.f14722o) / (this.f14712e * f2)) + 0.5f));
        this.f14717j = m21473f(this.f14717j, i2, (this.f14715h * 2) + i2);
        int i4 = 0;
        while (true) {
            i = this.f14715h;
            int i5 = this.f14709b;
            if (i4 >= i * 2 * i5) {
                break;
            }
            this.f14717j[(i5 * i2) + i4] = (short) 0;
            i4++;
        }
        this.f14718k += i * 2;
        m21462q();
        if (this.f14720m > i3) {
            this.f14720m = i3;
        }
        this.f14718k = 0;
        this.f14725r = 0;
        this.f14722o = 0;
    }

    /* renamed from: s */
    public void m21460s(ShortBuffer shortBuffer) {
        int remaining = shortBuffer.remaining();
        int i = this.f14709b;
        int i2 = remaining / i;
        short[] m21473f = m21473f(this.f14717j, this.f14718k, i2);
        this.f14717j = m21473f;
        shortBuffer.get(m21473f, this.f14718k * this.f14709b, ((i * i2) * 2) / 2);
        this.f14718k += i2;
        m21462q();
    }
}
