package p1727n3.p1874y.p1876b.p1877a.p1879n0;

import android.support.p001v4.media.session.MediaSessionCompat;
import java.util.Arrays;
/* renamed from: n3.y.b.a.n0.a0 */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/n0/a0.class */
public final class C27108a0 {

    /* renamed from: a */
    public final int f75779a;

    /* renamed from: b */
    public final int f75780b;

    /* renamed from: c */
    public final float f75781c;

    /* renamed from: d */
    public final float f75782d;

    /* renamed from: e */
    public final float f75783e;

    /* renamed from: f */
    public final int f75784f;

    /* renamed from: g */
    public final int f75785g;

    /* renamed from: h */
    public final int f75786h;

    /* renamed from: i */
    public final short[] f75787i;

    /* renamed from: j */
    public short[] f75788j;

    /* renamed from: k */
    public int f75789k;

    /* renamed from: l */
    public short[] f75790l;

    /* renamed from: m */
    public int f75791m;

    /* renamed from: n */
    public short[] f75792n;

    /* renamed from: o */
    public int f75793o;

    /* renamed from: p */
    public int f75794p;

    /* renamed from: q */
    public int f75795q;

    /* renamed from: r */
    public int f75796r;

    /* renamed from: s */
    public int f75797s;

    /* renamed from: t */
    public int f75798t;

    /* renamed from: u */
    public int f75799u;

    /* renamed from: v */
    public int f75800v;

    public C27108a0(int i, int i2, float f, float f2, int i3) {
        this.f75779a = i;
        this.f75780b = i2;
        this.f75781c = f;
        this.f75782d = f2;
        this.f75783e = i / i3;
        this.f75784f = i / 400;
        int i4 = i / 65;
        this.f75785g = i4;
        int i5 = i4 * 2;
        this.f75786h = i5;
        this.f75787i = new short[i5];
        this.f75788j = new short[i5 * i2];
        this.f75790l = new short[i5 * i2];
        this.f75792n = new short[i5 * i2];
    }

    /* renamed from: e */
    public static void m847e(int i, int i2, short[] sArr, int i3, short[] sArr2, int i4, short[] sArr3, int i5) {
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
    public final void m851a(short[] sArr, int i, int i2) {
        short[] m849c = m849c(this.f75790l, this.f75791m, i2);
        this.f75790l = m849c;
        int i3 = this.f75780b;
        System.arraycopy(sArr, i * i3, m849c, this.f75791m * i3, i3 * i2);
        this.f75791m += i2;
    }

    /* renamed from: b */
    public final void m850b(short[] sArr, int i, int i2) {
        int i3 = this.f75786h / i2;
        int i4 = this.f75780b;
        int i5 = i2 * i4;
        for (int i6 = 0; i6 < i3; i6++) {
            short s = 0;
            for (int i7 = 0; i7 < i5; i7++) {
                s += sArr[(i6 * i5) + (i * i4) + i7];
            }
            this.f75787i[i6] = (short) (s / i5);
        }
    }

    /* renamed from: c */
    public final short[] m849c(short[] sArr, int i, int i2) {
        int length = sArr.length;
        int i3 = this.f75780b;
        int i4 = length / i3;
        return i + i2 <= i4 ? sArr : Arrays.copyOf(sArr, (((i4 * 3) / 2) + i2) * i3);
    }

    /* renamed from: d */
    public final int m848d(short[] sArr, int i, int i2, int i3) {
        int i4 = i * this.f75780b;
        int i5 = 1;
        int i6 = 255;
        int i7 = 0;
        int i8 = 0;
        while (true) {
            int i9 = i8;
            if (i2 > i3) {
                this.f75799u = i5 / i7;
                this.f75800v = i9 / i6;
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
    public final void m846f() {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9 = this.f75791m;
        float f = this.f75781c;
        float f2 = this.f75782d;
        float f3 = f / f2;
        float f4 = this.f75783e * f2;
        double d = f3;
        if (d > 1.00001d || d < 0.99999d) {
            int i10 = this.f75789k;
            if (i10 >= this.f75786h) {
                int i11 = 0;
                while (true) {
                    int i12 = i11;
                    int i13 = this.f75796r;
                    if (i13 > 0) {
                        int min = Math.min(this.f75786h, i13);
                        m851a(this.f75788j, i12, min);
                        this.f75796r -= min;
                        i5 = i12 + min;
                    } else {
                        short[] sArr = this.f75788j;
                        int i14 = this.f75779a;
                        int i15 = i14 > 4000 ? i14 / 4000 : 1;
                        if (this.f75780b == 1 && i15 == 1) {
                            i6 = m848d(sArr, i12, this.f75784f, this.f75785g);
                        } else {
                            m850b(sArr, i12, i15);
                            int m848d = m848d(this.f75787i, 0, this.f75784f / i15, this.f75785g / i15);
                            if (i15 != 1) {
                                int i16 = m848d * i15;
                                int i17 = i15 * 4;
                                int i18 = i16 - i17;
                                int i19 = i16 + i17;
                                int i20 = this.f75784f;
                                int i21 = i18;
                                if (i18 < i20) {
                                    i21 = i20;
                                }
                                int i22 = this.f75785g;
                                int i23 = i19;
                                if (i19 > i22) {
                                    i23 = i22;
                                }
                                if (this.f75780b == 1) {
                                    i6 = m848d(sArr, i12, i21, i23);
                                } else {
                                    m850b(sArr, i12, 1);
                                    i6 = m848d(this.f75787i, 0, i21, i23);
                                }
                            } else {
                                i6 = m848d;
                            }
                        }
                        int i24 = this.f75799u;
                        int i25 = i24 != 0 && this.f75797s != 0 && this.f75800v <= i24 * 3 && i24 * 2 > this.f75798t * 3 ? this.f75797s : i6;
                        this.f75798t = i24;
                        this.f75797s = i6;
                        if (d > 1.0d) {
                            short[] sArr2 = this.f75788j;
                            if (f3 >= 2.0f) {
                                i8 = (int) (i25 / (f3 - 1.0f));
                            } else {
                                this.f75796r = (int) (((2.0f - f3) * i25) / (f3 - 1.0f));
                                i8 = i25;
                            }
                            short[] m849c = m849c(this.f75790l, this.f75791m, i8);
                            this.f75790l = m849c;
                            m847e(i8, this.f75780b, m849c, this.f75791m, sArr2, i12, sArr2, i12 + i25);
                            this.f75791m += i8;
                            i5 = i25 + i8 + i12;
                        } else {
                            short[] sArr3 = this.f75788j;
                            if (f3 < 0.5f) {
                                i7 = (int) ((i25 * f3) / (1.0f - f3));
                            } else {
                                this.f75796r = (int) ((((2.0f * f3) - 1.0f) * i25) / (1.0f - f3));
                                i7 = i25;
                            }
                            int i26 = i25 + i7;
                            short[] m849c2 = m849c(this.f75790l, this.f75791m, i26);
                            this.f75790l = m849c2;
                            int i27 = this.f75780b;
                            System.arraycopy(sArr3, i12 * i27, m849c2, this.f75791m * i27, i27 * i25);
                            m847e(i7, this.f75780b, this.f75790l, this.f75791m + i25, sArr3, i12 + i25, sArr3, i12);
                            this.f75791m += i26;
                            i5 = i12 + i7;
                        }
                    }
                    if (this.f75786h + i5 > i10) {
                        break;
                    }
                    i11 = i5;
                }
                int i28 = this.f75789k - i5;
                short[] sArr4 = this.f75788j;
                int i29 = this.f75780b;
                System.arraycopy(sArr4, i5 * i29, sArr4, 0, i29 * i28);
                this.f75789k = i28;
            }
        } else {
            m851a(this.f75788j, 0, this.f75789k);
            this.f75789k = 0;
        }
        if (f4 == 1.0f || this.f75791m == i9) {
            return;
        }
        int i30 = this.f75779a;
        int i31 = (int) (i30 / f4);
        while (true) {
            if (i31 <= 16384 && i30 <= 16384) {
                break;
            }
            i31 /= 2;
            i30 /= 2;
        }
        int i32 = this.f75791m - i9;
        short[] m849c3 = m849c(this.f75792n, this.f75793o, i32);
        this.f75792n = m849c3;
        short[] sArr5 = this.f75790l;
        int i33 = this.f75780b;
        System.arraycopy(sArr5, i9 * i33, m849c3, this.f75793o * i33, i33 * i32);
        this.f75791m = i9;
        this.f75793o += i32;
        int i34 = 0;
        while (true) {
            i = this.f75793o;
            i2 = i - 1;
            if (i34 >= i2) {
                break;
            }
            while (true) {
                i3 = this.f75794p + 1;
                i4 = this.f75795q;
                if (i3 * i31 <= i4 * i30) {
                    break;
                }
                this.f75790l = m849c(this.f75790l, this.f75791m, 1);
                int i35 = 0;
                while (true) {
                    int i36 = this.f75780b;
                    if (i35 < i36) {
                        short[] sArr6 = this.f75790l;
                        int i37 = this.f75791m;
                        short[] sArr7 = this.f75792n;
                        int i38 = (i34 * i36) + i35;
                        short s = sArr7[i38];
                        short s2 = sArr7[i38 + i36];
                        int i39 = this.f75795q;
                        int i40 = this.f75794p;
                        int i41 = (i40 + 1) * i31;
                        int i42 = i41 - (i39 * i30);
                        int i43 = i41 - (i40 * i31);
                        sArr6[(i37 * i36) + i35] = (short) ((((i43 - i42) * s2) + (s * i42)) / i43);
                        i35++;
                    }
                }
                this.f75795q++;
                this.f75791m++;
            }
            this.f75794p = i3;
            if (i3 == i30) {
                this.f75794p = 0;
                MediaSessionCompat.m43184y(i4 == i31);
                this.f75795q = 0;
            }
            i34++;
        }
        if (i2 == 0) {
            return;
        }
        short[] sArr8 = this.f75792n;
        int i44 = this.f75780b;
        System.arraycopy(sArr8, i2 * i44, sArr8, 0, (i - i2) * i44);
        this.f75793o -= i2;
    }
}
