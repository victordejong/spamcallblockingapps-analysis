package com.google.android.exoplayer2.audio;

import com.callapp.contacts.activity.contact.details.ConferenceActivity;
import com.google.android.exoplayer2.util.a;
import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/audio/s.class */
final class s {

    /* renamed from: a  reason: collision with root package name */
    final int f20789a;

    /* renamed from: b  reason: collision with root package name */
    final float f20790b;

    /* renamed from: c  reason: collision with root package name */
    final float f20791c;

    /* renamed from: d  reason: collision with root package name */
    final float f20792d;
    final int e;
    short[] f;
    int g;
    short[] h;
    int i;
    int j;
    int k;
    int l;
    int m;
    int n;
    int o;
    int p;
    int q;
    private final int r;
    private final int s;
    private final int t;
    private final short[] u;
    private short[] v;

    public s(int i, int i2, float f, float f2, int i3) {
        this.r = i;
        this.f20789a = i2;
        this.f20790b = f;
        this.f20791c = f2;
        this.f20792d = i / i3;
        this.s = i / 400;
        int i4 = i / 65;
        this.t = i4;
        int i5 = i4 * 2;
        this.e = i5;
        this.u = new short[i5];
        this.f = new short[i5 * i2];
        this.h = new short[i5 * i2];
        this.v = new short[i5 * i2];
    }

    private int a(short[] sArr, int i, int i2, int i3) {
        int i4 = i * this.f20789a;
        int i5 = 1;
        int i6 = 255;
        int i7 = 0;
        int i8 = 0;
        while (i2 <= i3) {
            int i9 = 0;
            for (int i10 = 0; i10 < i2; i10++) {
                i9 += Math.abs(sArr[i4 + i10] - sArr[(i4 + i2) + i10]);
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
        this.p = i5 / i7;
        this.q = i8 / i6;
        return i7;
    }

    private static void a(int i, int i2, short[] sArr, int i3, short[] sArr2, int i4, short[] sArr3, int i5) {
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

    private void b(short[] sArr, int i, int i2) {
        short[] a2 = a(this.h, this.i, i2);
        this.h = a2;
        int i3 = this.f20789a;
        System.arraycopy(sArr, i * i3, a2, this.i * i3, i3 * i2);
        this.i += i2;
    }

    private void c(short[] sArr, int i, int i2) {
        int i3 = this.e / i2;
        int i4 = this.f20789a;
        int i5 = i2 * i4;
        for (int i6 = 0; i6 < i3; i6++) {
            int i7 = 0;
            for (int i8 = 0; i8 < i5; i8++) {
                i7 += sArr[(i6 * i5) + (i * i4) + i8];
            }
            this.u[i6] = (short) (i7 / i5);
        }
    }

    public final int a() {
        return this.i * this.f20789a * 2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final short[] a(short[] sArr, int i, int i2) {
        int length = sArr.length;
        int i3 = this.f20789a;
        int i4 = length / i3;
        return i + i2 <= i4 ? sArr : Arrays.copyOf(sArr, (((i4 * 3) / 2) + i2) * i3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b() {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8 = this.i;
        float f = this.f20790b;
        float f2 = this.f20791c;
        float f3 = f / f2;
        float f4 = this.f20792d * f2;
        double d2 = f3;
        if (d2 > 1.00001d || d2 < 0.99999d) {
            int i9 = this.g;
            if (i9 >= this.e) {
                int i10 = 0;
                while (true) {
                    int i11 = this.m;
                    if (i11 > 0) {
                        int min = Math.min(this.e, i11);
                        b(this.f, i10, min);
                        this.m -= min;
                        i4 = i10 + min;
                    } else {
                        short[] sArr = this.f;
                        int i12 = this.r;
                        int i13 = i12 > 4000 ? i12 / ConferenceActivity.SNACK_BAR_DURATION : 1;
                        if (this.f20789a == 1 && i13 == 1) {
                            i5 = a(sArr, i10, this.s, this.t);
                        } else {
                            c(sArr, i10, i13);
                            int a2 = a(this.u, 0, this.s / i13, this.t / i13);
                            if (i13 != 1) {
                                int i14 = a2 * i13;
                                int i15 = i13 * 4;
                                int i16 = i14 - i15;
                                int i17 = i14 + i15;
                                int i18 = this.s;
                                int i19 = i16;
                                if (i16 < i18) {
                                    i19 = i18;
                                }
                                int i20 = this.t;
                                int i21 = i17;
                                if (i17 > i20) {
                                    i21 = i20;
                                }
                                if (this.f20789a == 1) {
                                    i5 = a(sArr, i10, i19, i21);
                                } else {
                                    c(sArr, i10, 1);
                                    i5 = a(this.u, 0, i19, i21);
                                }
                            } else {
                                i5 = a2;
                            }
                        }
                        int i22 = this.p;
                        int i23 = i22 != 0 && this.n != 0 && this.q <= i22 * 3 && i22 * 2 > this.o * 3 ? this.n : i5;
                        this.o = i22;
                        this.n = i5;
                        if (d2 > 1.0d) {
                            short[] sArr2 = this.f;
                            if (f3 >= 2.0f) {
                                i7 = (int) (i23 / (f3 - 1.0f));
                            } else {
                                this.m = (int) ((i23 * (2.0f - f3)) / (f3 - 1.0f));
                                i7 = i23;
                            }
                            short[] a3 = a(this.h, this.i, i7);
                            this.h = a3;
                            a(i7, this.f20789a, a3, this.i, sArr2, i10, sArr2, i10 + i23);
                            this.i += i7;
                            i4 = i10 + i23 + i7;
                        } else {
                            short[] sArr3 = this.f;
                            if (f3 < 0.5f) {
                                i6 = (int) ((i23 * f3) / (1.0f - f3));
                            } else {
                                this.m = (int) ((i23 * ((2.0f * f3) - 1.0f)) / (1.0f - f3));
                                i6 = i23;
                            }
                            int i24 = i23 + i6;
                            short[] a4 = a(this.h, this.i, i24);
                            this.h = a4;
                            int i25 = this.f20789a;
                            System.arraycopy(sArr3, i10 * i25, a4, this.i * i25, i25 * i23);
                            a(i6, this.f20789a, this.h, this.i + i23, sArr3, i10 + i23, sArr3, i10);
                            this.i += i24;
                            i4 = i10 + i6;
                        }
                    }
                    if (this.e + i4 > i9) {
                        break;
                    }
                    i10 = i4;
                }
                int i26 = this.g - i4;
                short[] sArr4 = this.f;
                int i27 = this.f20789a;
                System.arraycopy(sArr4, i4 * i27, sArr4, 0, i27 * i26);
                this.g = i26;
            }
        } else {
            b(this.f, 0, this.g);
            this.g = 0;
        }
        if (f4 != 1.0f && this.i != i8) {
            int i28 = this.r;
            int i29 = (int) (i28 / f4);
            while (true) {
                if (i29 <= 16384 && i28 <= 16384) {
                    break;
                }
                i29 /= 2;
                i28 /= 2;
            }
            int i30 = this.i - i8;
            short[] a5 = a(this.v, this.j, i30);
            this.v = a5;
            short[] sArr5 = this.h;
            int i31 = this.f20789a;
            System.arraycopy(sArr5, i8 * i31, a5, this.j * i31, i31 * i30);
            this.i = i8;
            this.j += i30;
            int i32 = 0;
            while (true) {
                i = this.j;
                if (i32 >= i - 1) {
                    break;
                }
                while (true) {
                    i2 = this.k;
                    i3 = this.l;
                    if ((i2 + 1) * i29 <= i3 * i28) {
                        break;
                    }
                    this.h = a(this.h, this.i, 1);
                    int i33 = 0;
                    while (true) {
                        int i34 = this.f20789a;
                        if (i33 < i34) {
                            short[] sArr6 = this.h;
                            int i35 = this.i;
                            short[] sArr7 = this.v;
                            int i36 = (i32 * i34) + i33;
                            short s = sArr7[i36];
                            short s2 = sArr7[i36 + i34];
                            int i37 = this.l;
                            int i38 = this.k;
                            int i39 = (i38 + 1) * i29;
                            int i40 = i39 - (i37 * i28);
                            int i41 = i39 - (i38 * i29);
                            sArr6[(i35 * i34) + i33] = (short) (((s * i40) + ((i41 - i40) * s2)) / i41);
                            i33++;
                        }
                    }
                    this.l++;
                    this.i++;
                }
                int i42 = i2 + 1;
                this.k = i42;
                if (i42 == i28) {
                    this.k = 0;
                    a.b(i3 == i29);
                    this.l = 0;
                }
                i32++;
            }
            int i43 = i - 1;
            if (i43 != 0) {
                short[] sArr8 = this.v;
                int i44 = this.f20789a;
                System.arraycopy(sArr8, i43 * i44, sArr8, 0, (i - i43) * i44);
                this.j -= i43;
            }
        }
    }
}
