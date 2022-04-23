package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzoz;
import com.google.logging.type.LogSeverity;
import java.nio.ShortBuffer;
import java.util.Arrays;
/* renamed from: c.d.b.d.g.a.mc0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/mc0.class */
public final class mc0 {

    /* renamed from: a */
    public final int f14131a;

    /* renamed from: b */
    public final int f14132b;

    /* renamed from: c */
    public final int f14133c;

    /* renamed from: d */
    public final int f14134d;

    /* renamed from: e */
    public final int f14135e;

    /* renamed from: f */
    public final short[] f14136f;

    /* renamed from: g */
    public int f14137g;

    /* renamed from: h */
    public short[] f14138h;

    /* renamed from: i */
    public int f14139i;

    /* renamed from: j */
    public short[] f14140j;

    /* renamed from: k */
    public int f14141k;

    /* renamed from: l */
    public short[] f14142l;

    /* renamed from: q */
    public int f14147q;

    /* renamed from: r */
    public int f14148r;

    /* renamed from: s */
    public int f14149s;

    /* renamed from: t */
    public int f14150t;

    /* renamed from: v */
    public int f14152v;

    /* renamed from: w */
    public int f14153w;

    /* renamed from: x */
    public int f14154x;

    /* renamed from: m */
    public int f14143m = 0;

    /* renamed from: n */
    public int f14144n = 0;

    /* renamed from: u */
    public int f14151u = 0;

    /* renamed from: o */
    public float f14145o = 1.0f;

    /* renamed from: p */
    public float f14146p = 1.0f;

    public mc0(int i, int i2) {
        this.f14131a = i;
        this.f14132b = i2;
        this.f14133c = i / LogSeverity.WARNING_VALUE;
        int i3 = i / 65;
        this.f14134d = i3;
        int i4 = i3 * 2;
        this.f14135e = i4;
        this.f14136f = new short[i4];
        this.f14137g = i4;
        this.f14138h = new short[i4 * i2];
        this.f14139i = i4;
        this.f14140j = new short[i4 * i2];
        this.f14141k = i4;
        this.f14142l = new short[i4 * i2];
    }

    /* renamed from: a */
    public static void m26641a(int i, int i2, short[] sArr, int i3, short[] sArr2, int i4, short[] sArr3, int i5) {
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
    public final int m26638a(short[] sArr, int i, int i2, int i3) {
        short s;
        short s2;
        int i4 = i * this.f14132b;
        int i5 = 1;
        int i6 = 255;
        int i7 = 0;
        int i8 = 0;
        while (i2 <= i3) {
            int i9 = 0;
            for (int i10 = 0; i10 < i2; i10++) {
                short s3 = sArr[i4 + i10];
                short s4 = sArr[i4 + i2 + i10];
                if (s3 >= s4) {
                    s2 = s3;
                    s = s4;
                } else {
                    s2 = s4;
                    s = s3;
                }
                i9 += s2 - s;
            }
            i5 = i5;
            i7 = i7;
            if (i9 * i7 < i5 * i2) {
                i7 = i2;
                i5 = i9;
            }
            i6 = i6;
            i8 = i8;
            if (i9 * i6 > i8 * i2) {
                i6 = i2;
                i8 = i9;
            }
            i2++;
        }
        this.f14153w = i5 / i7;
        this.f14154x = i8 / i6;
        return i7;
    }

    /* renamed from: a */
    public final void m26644a() {
        int i;
        int i2 = this.f14147q;
        float f = this.f14145o;
        float f2 = this.f14146p;
        int i3 = this.f14148r + ((int) ((((i2 / (f / f2)) + this.f14149s) / f2) + 0.5f));
        m26635b((this.f14135e * 2) + i2);
        int i4 = 0;
        while (true) {
            i = this.f14135e;
            int i5 = this.f14132b;
            if (i4 >= i * 2 * i5) {
                break;
            }
            this.f14138h[(i5 * i2) + i4] = (short) 0;
            i4++;
        }
        this.f14147q += i * 2;
        m26632c();
        if (this.f14148r > i3) {
            this.f14148r = i3;
        }
        this.f14147q = 0;
        this.f14150t = 0;
        this.f14149s = 0;
    }

    /* renamed from: a */
    public final void m26643a(float f) {
        this.f14145o = f;
    }

    /* renamed from: a */
    public final void m26642a(int i) {
        int i2 = this.f14148r;
        int i3 = this.f14139i;
        if (i2 + i > i3) {
            int i4 = i3 + (i3 / 2) + i;
            this.f14139i = i4;
            this.f14140j = Arrays.copyOf(this.f14140j, i4 * this.f14132b);
        }
    }

    /* renamed from: a */
    public final void m26640a(ShortBuffer shortBuffer) {
        int remaining = shortBuffer.remaining();
        int i = this.f14132b;
        int i2 = remaining / i;
        m26635b(i2);
        shortBuffer.get(this.f14138h, this.f14147q * this.f14132b, ((i * i2) << 1) / 2);
        this.f14147q += i2;
        m26632c();
    }

    /* renamed from: a */
    public final void m26639a(short[] sArr, int i, int i2) {
        m26642a(i2);
        int i3 = this.f14132b;
        System.arraycopy(sArr, i * i3, this.f14140j, this.f14148r * i3, i3 * i2);
        this.f14148r += i2;
    }

    /* renamed from: b */
    public final int m26637b() {
        return this.f14148r;
    }

    /* renamed from: b */
    public final void m26636b(float f) {
        this.f14146p = f;
    }

    /* renamed from: b */
    public final void m26635b(int i) {
        int i2 = this.f14147q;
        int i3 = this.f14137g;
        if (i2 + i > i3) {
            int i4 = i3 + (i3 / 2) + i;
            this.f14137g = i4;
            this.f14138h = Arrays.copyOf(this.f14138h, i4 * this.f14132b);
        }
    }

    /* renamed from: b */
    public final void m26634b(ShortBuffer shortBuffer) {
        int min = Math.min(shortBuffer.remaining() / this.f14132b, this.f14148r);
        shortBuffer.put(this.f14140j, 0, this.f14132b * min);
        int i = this.f14148r - min;
        this.f14148r = i;
        short[] sArr = this.f14140j;
        int i2 = this.f14132b;
        System.arraycopy(sArr, min * i2, sArr, 0, i * i2);
    }

    /* renamed from: b */
    public final void m26633b(short[] sArr, int i, int i2) {
        int i3 = this.f14135e / i2;
        int i4 = this.f14132b;
        int i5 = i2 * i4;
        for (int i6 = 0; i6 < i3; i6++) {
            int i7 = 0;
            for (int i8 = 0; i8 < i5; i8++) {
                i7 += sArr[(i6 * i5) + (i * i4) + i8];
            }
            this.f14136f[i6] = (short) (i7 / i5);
        }
    }

    /* renamed from: c */
    public final void m26632c() {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8 = this.f14148r;
        float f = this.f14145o / this.f14146p;
        double d = f;
        if (d > 1.00001d || d < 0.99999d) {
            int i9 = this.f14147q;
            if (i9 >= this.f14135e) {
                int i10 = 0;
                while (true) {
                    int i11 = this.f14150t;
                    if (i11 > 0) {
                        int min = Math.min(this.f14135e, i11);
                        m26639a(this.f14138h, i10, min);
                        this.f14150t -= min;
                        i4 = i10 + min;
                    } else {
                        short[] sArr = this.f14138h;
                        int i12 = this.f14131a;
                        int i13 = i12 > 4000 ? i12 / 4000 : 1;
                        if (this.f14132b == 1 && i13 == 1) {
                            i5 = m26638a(sArr, i10, this.f14133c, this.f14134d);
                        } else {
                            m26633b(sArr, i10, i13);
                            int a = m26638a(this.f14136f, 0, this.f14133c / i13, this.f14134d / i13);
                            if (i13 != 1) {
                                int i14 = a * i13;
                                int i15 = i13 << 2;
                                int i16 = i14 - i15;
                                int i17 = i14 + i15;
                                int i18 = this.f14133c;
                                int i19 = i16;
                                if (i16 < i18) {
                                    i19 = i18;
                                }
                                int i20 = this.f14134d;
                                int i21 = i17;
                                if (i17 > i20) {
                                    i21 = i20;
                                }
                                if (this.f14132b == 1) {
                                    i5 = m26638a(sArr, i10, i19, i21);
                                } else {
                                    m26633b(sArr, i10, 1);
                                    i5 = m26638a(this.f14136f, 0, i19, i21);
                                }
                            } else {
                                i5 = a;
                            }
                        }
                        int i22 = this.f14153w;
                        int i23 = i22 != 0 && this.f14151u != 0 && this.f14154x <= i22 * 3 && (i22 << 1) > this.f14152v * 3 ? this.f14151u : i5;
                        this.f14152v = this.f14153w;
                        this.f14151u = i5;
                        if (d > 1.0d) {
                            short[] sArr2 = this.f14138h;
                            if (f >= 2.0f) {
                                i7 = (int) (i23 / (f - 1.0f));
                            } else {
                                this.f14150t = (int) ((i23 * (2.0f - f)) / (f - 1.0f));
                                i7 = i23;
                            }
                            m26642a(i7);
                            m26641a(i7, this.f14132b, this.f14140j, this.f14148r, sArr2, i10, sArr2, i10 + i23);
                            this.f14148r += i7;
                            i4 = i10 + i23 + i7;
                        } else {
                            short[] sArr3 = this.f14138h;
                            if (f < 0.5f) {
                                i6 = (int) ((i23 * f) / (1.0f - f));
                            } else {
                                this.f14150t = (int) ((i23 * ((2.0f * f) - 1.0f)) / (1.0f - f));
                                i6 = i23;
                            }
                            int i24 = i23 + i6;
                            m26642a(i24);
                            int i25 = this.f14132b;
                            System.arraycopy(sArr3, i10 * i25, this.f14140j, this.f14148r * i25, i25 * i23);
                            m26641a(i6, this.f14132b, this.f14140j, this.f14148r + i23, sArr3, i23 + i10, sArr3, i10);
                            this.f14148r += i24;
                            i4 = i10 + i6;
                        }
                    }
                    if (this.f14135e + i4 > i9) {
                        break;
                    }
                    i10 = i4;
                }
                int i26 = this.f14147q - i4;
                short[] sArr4 = this.f14138h;
                int i27 = this.f14132b;
                System.arraycopy(sArr4, i4 * i27, sArr4, 0, i27 * i26);
                this.f14147q = i26;
            }
        } else {
            m26639a(this.f14138h, 0, this.f14147q);
            this.f14147q = 0;
        }
        float f2 = this.f14146p;
        if (f2 != 1.0f && this.f14148r != i8) {
            int i28 = this.f14131a;
            int i29 = (int) (i28 / f2);
            while (true) {
                if (i29 <= 16384 && i28 <= 16384) {
                    break;
                }
                i29 /= 2;
                i28 /= 2;
            }
            int i30 = this.f14148r - i8;
            int i31 = this.f14149s;
            int i32 = this.f14141k;
            if (i31 + i30 > i32) {
                int i33 = i32 + (i32 / 2) + i30;
                this.f14141k = i33;
                this.f14142l = Arrays.copyOf(this.f14142l, i33 * this.f14132b);
            }
            short[] sArr5 = this.f14140j;
            int i34 = this.f14132b;
            System.arraycopy(sArr5, i8 * i34, this.f14142l, this.f14149s * i34, i34 * i30);
            this.f14148r = i8;
            this.f14149s += i30;
            int i35 = 0;
            while (true) {
                i = this.f14149s;
                if (i35 >= i - 1) {
                    break;
                }
                while (true) {
                    i2 = this.f14143m;
                    i3 = this.f14144n;
                    if ((i2 + 1) * i29 <= i3 * i28) {
                        break;
                    }
                    m26642a(1);
                    int i36 = 0;
                    while (true) {
                        int i37 = this.f14132b;
                        if (i36 < i37) {
                            short[] sArr6 = this.f14140j;
                            int i38 = this.f14148r;
                            short[] sArr7 = this.f14142l;
                            int i39 = (i35 * i37) + i36;
                            short s = sArr7[i39];
                            short s2 = sArr7[i39 + i37];
                            int i40 = this.f14144n;
                            int i41 = this.f14143m;
                            int i42 = (i41 + 1) * i29;
                            int i43 = i42 - (i40 * i28);
                            int i44 = i42 - (i41 * i29);
                            sArr6[(i38 * i37) + i36] = (short) (((s * i43) + ((i44 - i43) * s2)) / i44);
                            i36++;
                        }
                    }
                    this.f14144n++;
                    this.f14148r++;
                }
                int i45 = i2 + 1;
                this.f14143m = i45;
                if (i45 == i28) {
                    this.f14143m = 0;
                    zzoz.m11694b(i3 == i29);
                    this.f14144n = 0;
                }
                i35++;
            }
            int i46 = i - 1;
            if (i46 != 0) {
                short[] sArr8 = this.f14142l;
                int i47 = this.f14132b;
                System.arraycopy(sArr8, i46 * i47, sArr8, 0, (i - i46) * i47);
                this.f14149s -= i46;
            }
        }
    }
}
