package com.google.android.gms.internal.ads;

import com.callapp.contacts.activity.contact.details.ConferenceActivity;
import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dxe.class */
final class dxe {

    /* renamed from: a  reason: collision with root package name */
    final int f27354a;

    /* renamed from: b  reason: collision with root package name */
    final int f27355b;

    /* renamed from: c  reason: collision with root package name */
    short[] f27356c;

    /* renamed from: d  reason: collision with root package name */
    short[] f27357d;
    int g;
    int h;
    int i;
    int j;
    private final int k;
    private final int l;
    private final int m;
    private final short[] n;
    private int o;
    private int p;
    private int q;
    private short[] r;
    private int v;
    private int w;
    private int x;
    private int s = 0;
    private int t = 0;
    private int u = 0;
    float e = 1.0f;
    float f = 1.0f;

    public dxe(int i, int i2) {
        this.k = i;
        this.f27354a = i2;
        this.l = i / 400;
        int i3 = i / 65;
        this.m = i3;
        int i4 = i3 * 2;
        this.f27355b = i4;
        this.n = new short[i4];
        this.o = i4;
        this.f27356c = new short[i4 * i2];
        this.p = i4;
        this.f27357d = new short[i4 * i2];
        this.q = i4;
        this.r = new short[i4 * i2];
    }

    private final int a(short[] sArr, int i, int i2, int i3) {
        short s;
        short s2;
        int i4 = i * this.f27354a;
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
        this.w = i5 / i7;
        this.x = i8 / i6;
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

    private final void a(short[] sArr, int i, int i2) {
        b(i2);
        int i3 = this.f27354a;
        System.arraycopy(sArr, i * i3, this.f27357d, this.h * i3, i3 * i2);
        this.h += i2;
    }

    private final void b(int i) {
        int i2 = this.h;
        int i3 = this.p;
        if (i2 + i > i3) {
            int i4 = i3 + (i3 / 2) + i;
            this.p = i4;
            this.f27357d = Arrays.copyOf(this.f27357d, i4 * this.f27354a);
        }
    }

    private final void b(short[] sArr, int i, int i2) {
        int i3 = this.f27355b / i2;
        int i4 = this.f27354a;
        int i5 = i2 * i4;
        for (int i6 = 0; i6 < i3; i6++) {
            int i7 = 0;
            for (int i8 = 0; i8 < i5; i8++) {
                i7 += sArr[(i6 * i5) + (i * i4) + i8];
            }
            this.n[i6] = (short) (i7 / i5);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8 = this.h;
        float f = this.e / this.f;
        double d2 = f;
        if (d2 > 1.00001d || d2 < 0.99999d) {
            int i9 = this.g;
            if (i9 >= this.f27355b) {
                int i10 = 0;
                while (true) {
                    int i11 = this.j;
                    if (i11 > 0) {
                        int min = Math.min(this.f27355b, i11);
                        a(this.f27356c, i10, min);
                        this.j -= min;
                        i4 = i10 + min;
                    } else {
                        short[] sArr = this.f27356c;
                        int i12 = this.k;
                        int i13 = i12 > 4000 ? i12 / ConferenceActivity.SNACK_BAR_DURATION : 1;
                        if (this.f27354a == 1 && i13 == 1) {
                            i5 = a(sArr, i10, this.l, this.m);
                        } else {
                            b(sArr, i10, i13);
                            int a2 = a(this.n, 0, this.l / i13, this.m / i13);
                            if (i13 != 1) {
                                int i14 = a2 * i13;
                                int i15 = i13 << 2;
                                int i16 = i14 - i15;
                                int i17 = i14 + i15;
                                int i18 = this.l;
                                int i19 = i16;
                                if (i16 < i18) {
                                    i19 = i18;
                                }
                                int i20 = this.m;
                                int i21 = i17;
                                if (i17 > i20) {
                                    i21 = i20;
                                }
                                if (this.f27354a == 1) {
                                    i5 = a(sArr, i10, i19, i21);
                                } else {
                                    b(sArr, i10, 1);
                                    i5 = a(this.n, 0, i19, i21);
                                }
                            } else {
                                i5 = a2;
                            }
                        }
                        int i22 = this.w;
                        int i23 = i22 != 0 && this.u != 0 && this.x <= i22 * 3 && (i22 << 1) > this.v * 3 ? this.u : i5;
                        this.v = i22;
                        this.u = i5;
                        if (d2 > 1.0d) {
                            short[] sArr2 = this.f27356c;
                            if (f >= 2.0f) {
                                i7 = (int) (i23 / (f - 1.0f));
                            } else {
                                this.j = (int) ((i23 * (2.0f - f)) / (f - 1.0f));
                                i7 = i23;
                            }
                            b(i7);
                            a(i7, this.f27354a, this.f27357d, this.h, sArr2, i10, sArr2, i10 + i23);
                            this.h += i7;
                            i4 = i10 + i23 + i7;
                        } else {
                            short[] sArr3 = this.f27356c;
                            if (f < 0.5f) {
                                i6 = (int) ((i23 * f) / (1.0f - f));
                            } else {
                                this.j = (int) ((i23 * ((2.0f * f) - 1.0f)) / (1.0f - f));
                                i6 = i23;
                            }
                            int i24 = i23 + i6;
                            b(i24);
                            int i25 = this.f27354a;
                            System.arraycopy(sArr3, i10 * i25, this.f27357d, this.h * i25, i25 * i23);
                            a(i6, this.f27354a, this.f27357d, this.h + i23, sArr3, i23 + i10, sArr3, i10);
                            this.h += i24;
                            i4 = i10 + i6;
                        }
                    }
                    if (this.f27355b + i4 > i9) {
                        break;
                    }
                    i10 = i4;
                }
                int i26 = this.g - i4;
                short[] sArr4 = this.f27356c;
                int i27 = this.f27354a;
                System.arraycopy(sArr4, i4 * i27, sArr4, 0, i27 * i26);
                this.g = i26;
            }
        } else {
            a(this.f27356c, 0, this.g);
            this.g = 0;
        }
        float f2 = this.f;
        if (f2 != 1.0f && this.h != i8) {
            int i28 = this.k;
            int i29 = (int) (i28 / f2);
            while (true) {
                if (i29 <= 16384 && i28 <= 16384) {
                    break;
                }
                i29 /= 2;
                i28 /= 2;
            }
            int i30 = this.h - i8;
            int i31 = this.i;
            int i32 = this.q;
            if (i31 + i30 > i32) {
                int i33 = i32 + (i32 / 2) + i30;
                this.q = i33;
                this.r = Arrays.copyOf(this.r, i33 * this.f27354a);
            }
            short[] sArr5 = this.f27357d;
            int i34 = this.f27354a;
            System.arraycopy(sArr5, i8 * i34, this.r, this.i * i34, i34 * i30);
            this.h = i8;
            this.i += i30;
            int i35 = 0;
            while (true) {
                i = this.i;
                if (i35 >= i - 1) {
                    break;
                }
                while (true) {
                    i2 = this.s;
                    i3 = this.t;
                    if ((i2 + 1) * i29 <= i3 * i28) {
                        break;
                    }
                    b(1);
                    int i36 = 0;
                    while (true) {
                        int i37 = this.f27354a;
                        if (i36 < i37) {
                            short[] sArr6 = this.f27357d;
                            int i38 = this.h;
                            short[] sArr7 = this.r;
                            int i39 = (i35 * i37) + i36;
                            short s = sArr7[i39];
                            short s2 = sArr7[i39 + i37];
                            int i40 = this.t;
                            int i41 = this.s;
                            int i42 = (i41 + 1) * i29;
                            int i43 = i42 - (i40 * i28);
                            int i44 = i42 - (i41 * i29);
                            sArr6[(i38 * i37) + i36] = (short) (((s * i43) + ((i44 - i43) * s2)) / i44);
                            i36++;
                        }
                    }
                    this.t++;
                    this.h++;
                }
                int i45 = i2 + 1;
                this.s = i45;
                if (i45 == i28) {
                    this.s = 0;
                    ecr.b(i3 == i29);
                    this.t = 0;
                }
                i35++;
            }
            int i46 = i - 1;
            if (i46 != 0) {
                short[] sArr8 = this.r;
                int i47 = this.f27354a;
                System.arraycopy(sArr8, i46 * i47, sArr8, 0, (i - i46) * i47);
                this.i -= i46;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(int i) {
        int i2 = this.g;
        int i3 = this.o;
        if (i2 + i > i3) {
            int i4 = i3 + (i3 / 2) + i;
            this.o = i4;
            this.f27356c = Arrays.copyOf(this.f27356c, i4 * this.f27354a);
        }
    }
}
