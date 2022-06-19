package com.google.android.gms.internal.ads;

import java.nio.ShortBuffer;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dmn.class */
final class dmn {

    /* renamed from: a */
    private final int f14809a;

    /* renamed from: b */
    private final int f14810b;

    /* renamed from: c */
    private final int f14811c;

    /* renamed from: d */
    private final int f14812d;

    /* renamed from: e */
    private final int f14813e;

    /* renamed from: f */
    private final short[] f14814f;

    /* renamed from: g */
    private int f14815g;

    /* renamed from: h */
    private short[] f14816h;

    /* renamed from: i */
    private int f14817i;

    /* renamed from: j */
    private short[] f14818j;

    /* renamed from: k */
    private int f14819k;

    /* renamed from: l */
    private short[] f14820l;

    /* renamed from: q */
    private int f14825q;

    /* renamed from: r */
    private int f14826r;

    /* renamed from: s */
    private int f14827s;

    /* renamed from: t */
    private int f14828t;

    /* renamed from: v */
    private int f14830v;

    /* renamed from: w */
    private int f14831w;

    /* renamed from: x */
    private int f14832x;

    /* renamed from: m */
    private int f14821m = 0;

    /* renamed from: n */
    private int f14822n = 0;

    /* renamed from: u */
    private int f14829u = 0;

    /* renamed from: o */
    private float f14823o = 1.0f;

    /* renamed from: p */
    private float f14824p = 1.0f;

    public dmn(int i, int i2) {
        this.f14809a = i;
        this.f14810b = i2;
        this.f14811c = i / 400;
        this.f14812d = i / 65;
        this.f14813e = this.f14812d * 2;
        this.f14814f = new short[this.f14813e];
        this.f14815g = this.f14813e;
        this.f14816h = new short[this.f14813e * i2];
        this.f14817i = this.f14813e;
        this.f14818j = new short[this.f14813e * i2];
        this.f14819k = this.f14813e;
        this.f14820l = new short[this.f14813e * i2];
    }

    /* renamed from: a */
    private final int m9117a(short[] sArr, int i, int i2, int i3) {
        short s;
        short s2;
        int i4 = 255;
        int i5 = 1;
        int i6 = i * this.f14810b;
        int i7 = i2;
        int i8 = 0;
        int i9 = 0;
        while (true) {
            int i10 = i9;
            if (i7 > i3) {
                this.f14831w = i5 / i10;
                this.f14832x = i8 / i4;
                return i10;
            }
            int i11 = 0;
            for (int i12 = 0; i12 < i7; i12++) {
                short s3 = sArr[i6 + i12];
                short s4 = sArr[i6 + i7 + i12];
                if (s3 >= s4) {
                    s = s3;
                    s2 = s4;
                } else {
                    s = s4;
                    s2 = s3;
                }
                i11 += s - s2;
            }
            int i13 = i5;
            int i14 = i10;
            if (i11 * i10 < i5 * i7) {
                i13 = i11;
                i14 = i7;
            }
            if (i11 * i4 > i8 * i7) {
                i4 = i7;
            } else {
                i11 = i8;
            }
            i7++;
            i8 = i11;
            i5 = i13;
            i9 = i14;
        }
    }

    /* renamed from: a */
    private final void m9121a(int i) {
        if (this.f14826r + i > this.f14817i) {
            this.f14817i += (this.f14817i / 2) + i;
            this.f14818j = Arrays.copyOf(this.f14818j, this.f14817i * this.f14810b);
        }
    }

    /* renamed from: a */
    private static void m9120a(int i, int i2, short[] sArr, int i3, short[] sArr2, int i4, short[] sArr3, int i5) {
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

    /* renamed from: a */
    private final void m9118a(short[] sArr, int i, int i2) {
        m9121a(i2);
        System.arraycopy(sArr, this.f14810b * i, this.f14818j, this.f14826r * this.f14810b, this.f14810b * i2);
        this.f14826r += i2;
    }

    /* renamed from: b */
    private final void m9114b(int i) {
        if (this.f14825q + i > this.f14815g) {
            this.f14815g += (this.f14815g / 2) + i;
            this.f14816h = Arrays.copyOf(this.f14816h, this.f14815g * this.f14810b);
        }
    }

    /* renamed from: b */
    private final void m9112b(short[] sArr, int i, int i2) {
        int i3 = this.f14813e / i2;
        int i4 = this.f14810b * i2;
        int i5 = this.f14810b;
        for (int i6 = 0; i6 < i3; i6++) {
            short s = 0;
            for (int i7 = 0; i7 < i4; i7++) {
                s += sArr[(i6 * i4) + (i * i5) + i7];
            }
            this.f14814f[i6] = (short) (s / i4);
        }
    }

    /* renamed from: c */
    private final void m9111c() {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6 = this.f14826r;
        float f = this.f14823o / this.f14824p;
        if (f <= 1.00001d && f >= 0.99999d) {
            m9118a(this.f14816h, 0, this.f14825q);
            this.f14825q = 0;
        } else if (this.f14825q >= this.f14813e) {
            int i7 = this.f14825q;
            int i8 = 0;
            do {
                if (this.f14828t > 0) {
                    int min = Math.min(this.f14813e, this.f14828t);
                    m9118a(this.f14816h, i8, min);
                    this.f14828t -= min;
                    i4 = i8 + min;
                } else {
                    short[] sArr = this.f14816h;
                    int i9 = this.f14809a > 4000 ? this.f14809a / 4000 : 1;
                    if (this.f14810b == 1 && i9 == 1) {
                        i2 = m9117a(sArr, i8, this.f14811c, this.f14812d);
                    } else {
                        m9112b(sArr, i8, i9);
                        int m9117a = m9117a(this.f14814f, 0, this.f14811c / i9, this.f14812d / i9);
                        if (i9 != 1) {
                            int i10 = m9117a * i9;
                            int i11 = i10 - (i9 << 2);
                            int i12 = i10 + (i9 << 2);
                            int i13 = i11 < this.f14811c ? this.f14811c : i11;
                            if (i12 > this.f14812d) {
                                i12 = this.f14812d;
                            }
                            if (this.f14810b == 1) {
                                i2 = m9117a(sArr, i8, i13, i12);
                            } else {
                                m9112b(sArr, i8, 1);
                                i2 = m9117a(this.f14814f, 0, i13, i12);
                            }
                        } else {
                            i2 = m9117a;
                        }
                    }
                    int i14 = this.f14831w;
                    int i15 = (i14 == 0 || this.f14829u == 0) ? false : this.f14832x > i14 * 3 ? false : (i14 << 1) > this.f14830v * 3 ? this.f14829u : i2;
                    this.f14830v = this.f14831w;
                    this.f14829u = i2;
                    if (f > 1.0d) {
                        short[] sArr2 = this.f14816h;
                        if (f >= 2.0f) {
                            i5 = (int) (i15 / (f - 1.0f));
                        } else {
                            this.f14828t = (int) ((i15 * (2.0f - f)) / (f - 1.0f));
                            i5 = i15;
                        }
                        m9121a(i5);
                        m9120a(i5, this.f14810b, this.f14818j, this.f14826r, sArr2, i8, sArr2, i8 + i15);
                        this.f14826r += i5;
                        i4 = i8 + i5 + i15;
                    } else {
                        short[] sArr3 = this.f14816h;
                        if (f < 0.5f) {
                            i3 = (int) ((i15 * f) / (1.0f - f));
                        } else {
                            this.f14828t = (int) ((i15 * ((2.0f * f) - 1.0f)) / (1.0f - f));
                            i3 = i15;
                        }
                        m9121a(i15 + i3);
                        System.arraycopy(sArr3, this.f14810b * i8, this.f14818j, this.f14826r * this.f14810b, this.f14810b * i15);
                        m9120a(i3, this.f14810b, this.f14818j, this.f14826r + i15, sArr3, i8 + i15, sArr3, i8);
                        this.f14826r += i15 + i3;
                        i4 = i8 + i3;
                    }
                }
                i8 = i4;
            } while (this.f14813e + i4 <= i7);
            int i16 = this.f14825q - i4;
            System.arraycopy(this.f14816h, this.f14810b * i4, this.f14816h, 0, this.f14810b * i16);
            this.f14825q = i16;
        }
        if (this.f14824p != 1.0f) {
            float f2 = this.f14824p;
            if (this.f14826r == i6) {
                return;
            }
            int i17 = (int) (this.f14809a / f2);
            int i18 = this.f14809a;
            while (true) {
                i = i18;
                if (i17 <= 16384 && i <= 16384) {
                    break;
                }
                i17 /= 2;
                i18 = i / 2;
            }
            int i19 = this.f14826r - i6;
            if (this.f14827s + i19 > this.f14819k) {
                this.f14819k += (this.f14819k / 2) + i19;
                this.f14820l = Arrays.copyOf(this.f14820l, this.f14819k * this.f14810b);
            }
            System.arraycopy(this.f14818j, this.f14810b * i6, this.f14820l, this.f14827s * this.f14810b, this.f14810b * i19);
            this.f14826r = i6;
            this.f14827s = i19 + this.f14827s;
            for (int i20 = 0; i20 < this.f14827s - 1; i20++) {
                while ((this.f14821m + 1) * i17 > this.f14822n * i) {
                    m9121a(1);
                    for (int i21 = 0; i21 < this.f14810b; i21++) {
                        short[] sArr4 = this.f14818j;
                        int i22 = this.f14826r;
                        int i23 = this.f14810b;
                        short[] sArr5 = this.f14820l;
                        int i24 = (this.f14810b * i20) + i21;
                        short s = sArr5[i24];
                        short s2 = sArr5[i24 + this.f14810b];
                        int i25 = this.f14822n;
                        int i26 = this.f14821m;
                        int i27 = (this.f14821m + 1) * i17;
                        int i28 = i27 - (i25 * i);
                        int i29 = i27 - (i26 * i17);
                        sArr4[(i22 * i23) + i21] = (short) (((s2 * (i29 - i28)) + (s * i28)) / i29);
                    }
                    this.f14822n++;
                    this.f14826r++;
                }
                this.f14821m++;
                if (this.f14821m == i) {
                    this.f14821m = 0;
                    drz.m8770b(this.f14822n == i17);
                    this.f14822n = 0;
                }
            }
            int i30 = this.f14827s - 1;
            if (i30 == 0) {
                return;
            }
            System.arraycopy(this.f14820l, this.f14810b * i30, this.f14820l, 0, (this.f14827s - i30) * this.f14810b);
            this.f14827s -= i30;
        }
    }

    /* renamed from: a */
    public final void m9123a() {
        int i = this.f14825q;
        int i2 = this.f14826r + ((int) ((((i / (this.f14823o / this.f14824p)) + this.f14827s) / this.f14824p) + 0.5f));
        m9114b((this.f14813e * 2) + i);
        for (int i3 = 0; i3 < this.f14813e * 2 * this.f14810b; i3++) {
            this.f14816h[(this.f14810b * i) + i3] = (short) 0;
        }
        this.f14825q += this.f14813e * 2;
        m9111c();
        if (this.f14826r > i2) {
            this.f14826r = i2;
        }
        this.f14825q = 0;
        this.f14828t = 0;
        this.f14827s = 0;
    }

    /* renamed from: a */
    public final void m9122a(float f) {
        this.f14823o = f;
    }

    /* renamed from: a */
    public final void m9119a(ShortBuffer shortBuffer) {
        int remaining = shortBuffer.remaining() / this.f14810b;
        int i = this.f14810b;
        m9114b(remaining);
        shortBuffer.get(this.f14816h, this.f14825q * this.f14810b, ((i * remaining) << 1) / 2);
        this.f14825q = remaining + this.f14825q;
        m9111c();
    }

    /* renamed from: b */
    public final int m9116b() {
        return this.f14826r;
    }

    /* renamed from: b */
    public final void m9115b(float f) {
        this.f14824p = f;
    }

    /* renamed from: b */
    public final void m9113b(ShortBuffer shortBuffer) {
        int min = Math.min(shortBuffer.remaining() / this.f14810b, this.f14826r);
        shortBuffer.put(this.f14818j, 0, this.f14810b * min);
        this.f14826r -= min;
        System.arraycopy(this.f14818j, min * this.f14810b, this.f14818j, 0, this.f14826r * this.f14810b);
    }
}
