package com.google.android.gms.internal.ads;

import com.callapp.contacts.activity.contact.details.ConferenceActivity;
import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dxe.class */
final class dxe {

    /* renamed from: a */
    final int f47912a;

    /* renamed from: b */
    final int f47913b;

    /* renamed from: c */
    short[] f47914c;

    /* renamed from: d */
    short[] f47915d;

    /* renamed from: g */
    int f47918g;

    /* renamed from: h */
    int f47919h;

    /* renamed from: i */
    int f47920i;

    /* renamed from: j */
    int f47921j;

    /* renamed from: k */
    private final int f47922k;

    /* renamed from: l */
    private final int f47923l;

    /* renamed from: m */
    private final int f47924m;

    /* renamed from: n */
    private final short[] f47925n;

    /* renamed from: o */
    private int f47926o;

    /* renamed from: p */
    private int f47927p;

    /* renamed from: q */
    private int f47928q;

    /* renamed from: r */
    private short[] f47929r;

    /* renamed from: v */
    private int f47933v;

    /* renamed from: w */
    private int f47934w;

    /* renamed from: x */
    private int f47935x;

    /* renamed from: s */
    private int f47930s = 0;

    /* renamed from: t */
    private int f47931t = 0;

    /* renamed from: u */
    private int f47932u = 0;

    /* renamed from: e */
    float f47916e = 1.0f;

    /* renamed from: f */
    float f47917f = 1.0f;

    public dxe(int i, int i2) {
        this.f47922k = i;
        this.f47912a = i2;
        this.f47923l = i / 400;
        int i3 = i / 65;
        this.f47924m = i3;
        int i4 = i3 * 2;
        this.f47913b = i4;
        this.f47925n = new short[i4];
        this.f47926o = i4;
        this.f47914c = new short[i4 * i2];
        this.f47927p = i4;
        this.f47915d = new short[i4 * i2];
        this.f47928q = i4;
        this.f47929r = new short[i4 * i2];
    }

    /* renamed from: a */
    private final int m15527a(short[] sArr, int i, int i2, int i3) {
        short s;
        short s2;
        int i4 = i * this.f47912a;
        int i5 = 1;
        int i6 = 255;
        int i7 = 0;
        int i8 = 0;
        while (true) {
            int i9 = i8;
            if (i2 > i3) {
                this.f47934w = i5 / i7;
                this.f47935x = i9 / i6;
                return i7;
            }
            int i10 = 0;
            for (int i11 = 0; i11 < i2; i11++) {
                short s3 = sArr[i4 + i11];
                short s4 = sArr[i4 + i2 + i11];
                if (s3 >= s4) {
                    s2 = s3;
                    s = s4;
                } else {
                    s2 = s4;
                    s = s3;
                }
                i10 += s2 - s;
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

    /* renamed from: a */
    private static void m15529a(int i, int i2, short[] sArr, int i3, short[] sArr2, int i4, short[] sArr3, int i5) {
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
    private final void m15528a(short[] sArr, int i, int i2) {
        m15526b(i2);
        int i3 = this.f47912a;
        System.arraycopy(sArr, i * i3, this.f47915d, this.f47919h * i3, i3 * i2);
        this.f47919h += i2;
    }

    /* renamed from: b */
    private final void m15526b(int i) {
        int i2 = this.f47919h;
        int i3 = this.f47927p;
        if (i2 + i > i3) {
            int i4 = i3 + (i3 / 2) + i;
            this.f47927p = i4;
            this.f47915d = Arrays.copyOf(this.f47915d, i4 * this.f47912a);
        }
    }

    /* renamed from: b */
    private final void m15525b(short[] sArr, int i, int i2) {
        int i3 = this.f47913b / i2;
        int i4 = this.f47912a;
        int i5 = i2 * i4;
        for (int i6 = 0; i6 < i3; i6++) {
            short s = 0;
            for (int i7 = 0; i7 < i5; i7++) {
                s += sArr[(i6 * i5) + (i * i4) + i7];
            }
            this.f47925n[i6] = (short) (s / i5);
        }
    }

    /* renamed from: a */
    public final void m15531a() {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8 = this.f47919h;
        float f = this.f47916e / this.f47917f;
        double d = f;
        if (d > 1.00001d || d < 0.99999d) {
            int i9 = this.f47918g;
            if (i9 >= this.f47913b) {
                int i10 = 0;
                while (true) {
                    int i11 = i10;
                    int i12 = this.f47921j;
                    if (i12 > 0) {
                        int min = Math.min(this.f47913b, i12);
                        m15528a(this.f47914c, i11, min);
                        this.f47921j -= min;
                        i4 = i11 + min;
                    } else {
                        short[] sArr = this.f47914c;
                        int i13 = this.f47922k;
                        int i14 = i13 > 4000 ? i13 / ConferenceActivity.SNACK_BAR_DURATION : 1;
                        if (this.f47912a == 1 && i14 == 1) {
                            i5 = m15527a(sArr, i11, this.f47923l, this.f47924m);
                        } else {
                            m15525b(sArr, i11, i14);
                            int m15527a = m15527a(this.f47925n, 0, this.f47923l / i14, this.f47924m / i14);
                            if (i14 != 1) {
                                int i15 = m15527a * i14;
                                int i16 = i14 << 2;
                                int i17 = i15 - i16;
                                int i18 = i15 + i16;
                                int i19 = this.f47923l;
                                int i20 = i17;
                                if (i17 < i19) {
                                    i20 = i19;
                                }
                                int i21 = this.f47924m;
                                int i22 = i18;
                                if (i18 > i21) {
                                    i22 = i21;
                                }
                                if (this.f47912a == 1) {
                                    i5 = m15527a(sArr, i11, i20, i22);
                                } else {
                                    m15525b(sArr, i11, 1);
                                    i5 = m15527a(this.f47925n, 0, i20, i22);
                                }
                            } else {
                                i5 = m15527a;
                            }
                        }
                        int i23 = this.f47934w;
                        int i24 = i23 != 0 && this.f47932u != 0 && this.f47935x <= i23 * 3 && (i23 << 1) > this.f47933v * 3 ? this.f47932u : i5;
                        this.f47933v = i23;
                        this.f47932u = i5;
                        if (d > 1.0d) {
                            short[] sArr2 = this.f47914c;
                            if (f >= 2.0f) {
                                i7 = (int) (i24 / (f - 1.0f));
                            } else {
                                this.f47921j = (int) ((i24 * (2.0f - f)) / (f - 1.0f));
                                i7 = i24;
                            }
                            m15526b(i7);
                            m15529a(i7, this.f47912a, this.f47915d, this.f47919h, sArr2, i11, sArr2, i11 + i24);
                            this.f47919h += i7;
                            i4 = i11 + i24 + i7;
                        } else {
                            short[] sArr3 = this.f47914c;
                            if (f < 0.5f) {
                                i6 = (int) ((i24 * f) / (1.0f - f));
                            } else {
                                this.f47921j = (int) ((i24 * ((2.0f * f) - 1.0f)) / (1.0f - f));
                                i6 = i24;
                            }
                            int i25 = i24 + i6;
                            m15526b(i25);
                            int i26 = this.f47912a;
                            System.arraycopy(sArr3, i11 * i26, this.f47915d, this.f47919h * i26, i26 * i24);
                            m15529a(i6, this.f47912a, this.f47915d, this.f47919h + i24, sArr3, i24 + i11, sArr3, i11);
                            this.f47919h += i25;
                            i4 = i11 + i6;
                        }
                    }
                    if (this.f47913b + i4 > i9) {
                        break;
                    }
                    i10 = i4;
                }
                int i27 = this.f47918g - i4;
                short[] sArr4 = this.f47914c;
                int i28 = this.f47912a;
                System.arraycopy(sArr4, i4 * i28, sArr4, 0, i28 * i27);
                this.f47918g = i27;
            }
        } else {
            m15528a(this.f47914c, 0, this.f47918g);
            this.f47918g = 0;
        }
        float f2 = this.f47917f;
        if (f2 == 1.0f || this.f47919h == i8) {
            return;
        }
        int i29 = this.f47922k;
        int i30 = (int) (i29 / f2);
        while (true) {
            if (i30 <= 16384 && i29 <= 16384) {
                break;
            }
            i30 /= 2;
            i29 /= 2;
        }
        int i31 = this.f47919h - i8;
        int i32 = this.f47920i;
        int i33 = this.f47928q;
        if (i32 + i31 > i33) {
            int i34 = i33 + (i33 / 2) + i31;
            this.f47928q = i34;
            this.f47929r = Arrays.copyOf(this.f47929r, i34 * this.f47912a);
        }
        short[] sArr5 = this.f47915d;
        int i35 = this.f47912a;
        System.arraycopy(sArr5, i8 * i35, this.f47929r, this.f47920i * i35, i35 * i31);
        this.f47919h = i8;
        this.f47920i += i31;
        int i36 = 0;
        while (true) {
            i = this.f47920i;
            if (i36 >= i - 1) {
                break;
            }
            while (true) {
                i2 = this.f47930s;
                i3 = this.f47931t;
                if ((i2 + 1) * i30 <= i3 * i29) {
                    break;
                }
                m15526b(1);
                int i37 = 0;
                while (true) {
                    int i38 = this.f47912a;
                    if (i37 < i38) {
                        short[] sArr6 = this.f47915d;
                        int i39 = this.f47919h;
                        short[] sArr7 = this.f47929r;
                        int i40 = (i36 * i38) + i37;
                        short s = sArr7[i40];
                        short s2 = sArr7[i40 + i38];
                        int i41 = this.f47931t;
                        int i42 = this.f47930s;
                        int i43 = (i42 + 1) * i30;
                        int i44 = i43 - (i41 * i29);
                        int i45 = i43 - (i42 * i30);
                        sArr6[(i39 * i38) + i37] = (short) (((s * i44) + ((i45 - i44) * s2)) / i45);
                        i37++;
                    }
                }
                this.f47931t++;
                this.f47919h++;
            }
            int i46 = i2 + 1;
            this.f47930s = i46;
            if (i46 == i29) {
                this.f47930s = 0;
                ecr.m15247b(i3 == i30);
                this.f47931t = 0;
            }
            i36++;
        }
        int i47 = i - 1;
        if (i47 == 0) {
            return;
        }
        short[] sArr8 = this.f47929r;
        int i48 = this.f47912a;
        System.arraycopy(sArr8, i47 * i48, sArr8, 0, (i - i47) * i48);
        this.f47920i -= i47;
    }

    /* renamed from: a */
    public final void m15530a(int i) {
        int i2 = this.f47918g;
        int i3 = this.f47926o;
        if (i2 + i > i3) {
            int i4 = i3 + (i3 / 2) + i;
            this.f47926o = i4;
            this.f47914c = Arrays.copyOf(this.f47914c, i4 * this.f47912a);
        }
    }
}
