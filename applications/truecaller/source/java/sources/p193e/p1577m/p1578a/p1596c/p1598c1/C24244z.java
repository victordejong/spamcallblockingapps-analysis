package p193e.p1577m.p1578a.p1596c.p1598c1;

import java.util.Arrays;
import p1727n3.p1789g0.C26232y;
/* renamed from: e.m.a.c.c1.z */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/c1/z.class */
public final class C24244z {

    /* renamed from: a */
    public final int f67167a;

    /* renamed from: b */
    public final int f67168b;

    /* renamed from: c */
    public final float f67169c;

    /* renamed from: d */
    public final float f67170d;

    /* renamed from: e */
    public final float f67171e;

    /* renamed from: f */
    public final int f67172f;

    /* renamed from: g */
    public final int f67173g;

    /* renamed from: h */
    public final int f67174h;

    /* renamed from: i */
    public final short[] f67175i;

    /* renamed from: j */
    public short[] f67176j;

    /* renamed from: k */
    public int f67177k;

    /* renamed from: l */
    public short[] f67178l;

    /* renamed from: m */
    public int f67179m;

    /* renamed from: n */
    public short[] f67180n;

    /* renamed from: o */
    public int f67181o;

    /* renamed from: p */
    public int f67182p;

    /* renamed from: q */
    public int f67183q;

    /* renamed from: r */
    public int f67184r;

    /* renamed from: s */
    public int f67185s;

    /* renamed from: t */
    public int f67186t;

    /* renamed from: u */
    public int f67187u;

    /* renamed from: v */
    public int f67188v;

    public C24244z(int i, int i2, float f, float f2, int i3) {
        this.f67167a = i;
        this.f67168b = i2;
        this.f67169c = f;
        this.f67170d = f2;
        this.f67171e = i / i3;
        this.f67172f = i / 400;
        int i4 = i / 65;
        this.f67173g = i4;
        int i5 = i4 * 2;
        this.f67174h = i5;
        this.f67175i = new short[i5];
        this.f67176j = new short[i5 * i2];
        this.f67178l = new short[i5 * i2];
        this.f67180n = new short[i5 * i2];
    }

    /* renamed from: e */
    public static void m5389e(int i, int i2, short[] sArr, int i3, short[] sArr2, int i4, short[] sArr3, int i5) {
        for (int i6 = 0; i6 < i2; i6++) {
            int i7 = (i3 * i2) + i6;
            int i8 = (i5 * i2) + i6;
            int i9 = (i4 * i2) + i6;
            for (int i10 = 0; i10 < i; i10++) {
                sArr[i7] = (short) (((sArr3[i8] * i10) + ((i - i10) * sArr2[i9])) / i);
                i7 += i2;
                i9 += i2;
                i8 += i2;
            }
        }
    }

    /* renamed from: a */
    public final void m5393a(short[] sArr, int i, int i2) {
        short[] m5391c = m5391c(this.f67178l, this.f67179m, i2);
        this.f67178l = m5391c;
        int i3 = this.f67168b;
        System.arraycopy(sArr, i * i3, m5391c, this.f67179m * i3, i3 * i2);
        this.f67179m += i2;
    }

    /* renamed from: b */
    public final void m5392b(short[] sArr, int i, int i2) {
        int i3 = this.f67174h / i2;
        int i4 = this.f67168b;
        int i5 = i2 * i4;
        for (int i6 = 0; i6 < i3; i6++) {
            short s = 0;
            for (int i7 = 0; i7 < i5; i7++) {
                s += sArr[(i6 * i5) + (i * i4) + i7];
            }
            this.f67175i[i6] = (short) (s / i5);
        }
    }

    /* renamed from: c */
    public final short[] m5391c(short[] sArr, int i, int i2) {
        int length = sArr.length;
        int i3 = this.f67168b;
        int i4 = length / i3;
        return i + i2 <= i4 ? sArr : Arrays.copyOf(sArr, (((i4 * 3) / 2) + i2) * i3);
    }

    /* renamed from: d */
    public final int m5390d(short[] sArr, int i, int i2, int i3) {
        int i4 = i * this.f67168b;
        int i5 = 1;
        int i6 = 255;
        int i7 = 0;
        int i8 = 0;
        while (true) {
            int i9 = i8;
            if (i2 > i3) {
                this.f67187u = i5 / i7;
                this.f67188v = i9 / i6;
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

    /* renamed from: f */
    public final void m5388f() {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9 = this.f67179m;
        float f = this.f67169c;
        float f2 = this.f67170d;
        float f3 = f / f2;
        float f4 = this.f67171e * f2;
        double d = f3;
        if (d > 1.00001d || d < 0.99999d) {
            int i10 = this.f67177k;
            if (i10 >= this.f67174h) {
                int i11 = 0;
                while (true) {
                    int i12 = i11;
                    int i13 = this.f67184r;
                    if (i13 > 0) {
                        int min = Math.min(this.f67174h, i13);
                        m5393a(this.f67176j, i12, min);
                        this.f67184r -= min;
                        i5 = i12 + min;
                    } else {
                        short[] sArr = this.f67176j;
                        int i14 = this.f67167a;
                        int i15 = i14 > 4000 ? i14 / 4000 : 1;
                        if (this.f67168b == 1 && i15 == 1) {
                            i6 = m5390d(sArr, i12, this.f67172f, this.f67173g);
                        } else {
                            m5392b(sArr, i12, i15);
                            int m5390d = m5390d(this.f67175i, 0, this.f67172f / i15, this.f67173g / i15);
                            if (i15 != 1) {
                                int i16 = m5390d * i15;
                                int i17 = i15 * 4;
                                int i18 = i16 - i17;
                                int i19 = i16 + i17;
                                int i20 = this.f67172f;
                                int i21 = i18;
                                if (i18 < i20) {
                                    i21 = i20;
                                }
                                int i22 = this.f67173g;
                                int i23 = i19;
                                if (i19 > i22) {
                                    i23 = i22;
                                }
                                if (this.f67168b == 1) {
                                    i6 = m5390d(sArr, i12, i21, i23);
                                } else {
                                    m5392b(sArr, i12, 1);
                                    i6 = m5390d(this.f67175i, 0, i21, i23);
                                }
                            } else {
                                i6 = m5390d;
                            }
                        }
                        int i24 = this.f67187u;
                        int i25 = i24 != 0 && this.f67185s != 0 && this.f67188v <= i24 * 3 && i24 * 2 > this.f67186t * 3 ? this.f67185s : i6;
                        this.f67186t = i24;
                        this.f67185s = i6;
                        if (d > 1.0d) {
                            short[] sArr2 = this.f67176j;
                            if (f3 >= 2.0f) {
                                i8 = (int) (i25 / (f3 - 1.0f));
                            } else {
                                this.f67184r = (int) (((2.0f - f3) * i25) / (f3 - 1.0f));
                                i8 = i25;
                            }
                            short[] m5391c = m5391c(this.f67178l, this.f67179m, i8);
                            this.f67178l = m5391c;
                            m5389e(i8, this.f67168b, m5391c, this.f67179m, sArr2, i12, sArr2, i12 + i25);
                            this.f67179m += i8;
                            i5 = i25 + i8 + i12;
                        } else {
                            short[] sArr3 = this.f67176j;
                            if (f3 < 0.5f) {
                                i7 = (int) ((i25 * f3) / (1.0f - f3));
                            } else {
                                this.f67184r = (int) ((((2.0f * f3) - 1.0f) * i25) / (1.0f - f3));
                                i7 = i25;
                            }
                            int i26 = i25 + i7;
                            short[] m5391c2 = m5391c(this.f67178l, this.f67179m, i26);
                            this.f67178l = m5391c2;
                            int i27 = this.f67168b;
                            System.arraycopy(sArr3, i12 * i27, m5391c2, this.f67179m * i27, i27 * i25);
                            m5389e(i7, this.f67168b, this.f67178l, this.f67179m + i25, sArr3, i12 + i25, sArr3, i12);
                            this.f67179m += i26;
                            i5 = i12 + i7;
                        }
                    }
                    if (this.f67174h + i5 > i10) {
                        break;
                    }
                    i11 = i5;
                }
                int i28 = this.f67177k - i5;
                short[] sArr4 = this.f67176j;
                int i29 = this.f67168b;
                System.arraycopy(sArr4, i5 * i29, sArr4, 0, i29 * i28);
                this.f67177k = i28;
            }
        } else {
            m5393a(this.f67176j, 0, this.f67177k);
            this.f67177k = 0;
        }
        if (f4 == 1.0f || this.f67179m == i9) {
            return;
        }
        int i30 = this.f67167a;
        int i31 = (int) (i30 / f4);
        while (true) {
            if (i31 <= 16384 && i30 <= 16384) {
                break;
            }
            i31 /= 2;
            i30 /= 2;
        }
        int i32 = this.f67179m - i9;
        short[] m5391c3 = m5391c(this.f67180n, this.f67181o, i32);
        this.f67180n = m5391c3;
        short[] sArr5 = this.f67178l;
        int i33 = this.f67168b;
        System.arraycopy(sArr5, i9 * i33, m5391c3, this.f67181o * i33, i33 * i32);
        this.f67179m = i9;
        this.f67181o += i32;
        int i34 = 0;
        while (true) {
            i = this.f67181o;
            i2 = i - 1;
            if (i34 >= i2) {
                break;
            }
            while (true) {
                i3 = this.f67182p + 1;
                i4 = this.f67183q;
                if (i3 * i31 <= i4 * i30) {
                    break;
                }
                this.f67178l = m5391c(this.f67178l, this.f67179m, 1);
                int i35 = 0;
                while (true) {
                    int i36 = this.f67168b;
                    if (i35 < i36) {
                        short[] sArr6 = this.f67178l;
                        int i37 = this.f67179m;
                        short[] sArr7 = this.f67180n;
                        int i38 = (i34 * i36) + i35;
                        short s = sArr7[i38];
                        short s2 = sArr7[i38 + i36];
                        int i39 = this.f67183q;
                        int i40 = this.f67182p;
                        int i41 = (i40 + 1) * i31;
                        int i42 = i41 - (i39 * i30);
                        int i43 = i41 - (i40 * i31);
                        sArr6[(i37 * i36) + i35] = (short) ((((i43 - i42) * s2) + (s * i42)) / i43);
                        i35++;
                    }
                }
                this.f67183q++;
                this.f67179m++;
            }
            this.f67182p = i3;
            if (i3 == i30) {
                this.f67182p = 0;
                C26232y.m2286x(i4 == i31);
                this.f67183q = 0;
            }
            i34++;
        }
        if (i2 == 0) {
            return;
        }
        short[] sArr8 = this.f67180n;
        int i44 = this.f67168b;
        System.arraycopy(sArr8, i2 * i44, sArr8, 0, (i - i2) * i44);
        this.f67181o -= i2;
    }
}
