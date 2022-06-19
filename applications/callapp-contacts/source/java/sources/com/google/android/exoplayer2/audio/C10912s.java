package com.google.android.exoplayer2.audio;

import com.callapp.contacts.activity.contact.details.ConferenceActivity;
import com.google.android.exoplayer2.util.C11593a;
import java.util.Arrays;
/* renamed from: com.google.android.exoplayer2.audio.s */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/audio/s.class */
final class C10912s {

    /* renamed from: a */
    final int f35250a;

    /* renamed from: b */
    final float f35251b;

    /* renamed from: c */
    final float f35252c;

    /* renamed from: d */
    final float f35253d;

    /* renamed from: e */
    final int f35254e;

    /* renamed from: f */
    short[] f35255f;

    /* renamed from: g */
    int f35256g;

    /* renamed from: h */
    short[] f35257h;

    /* renamed from: i */
    int f35258i;

    /* renamed from: j */
    int f35259j;

    /* renamed from: k */
    int f35260k;

    /* renamed from: l */
    int f35261l;

    /* renamed from: m */
    int f35262m;

    /* renamed from: n */
    int f35263n;

    /* renamed from: o */
    int f35264o;

    /* renamed from: p */
    int f35265p;

    /* renamed from: q */
    int f35266q;

    /* renamed from: r */
    private final int f35267r;

    /* renamed from: s */
    private final int f35268s;

    /* renamed from: t */
    private final int f35269t;

    /* renamed from: u */
    private final short[] f35270u;

    /* renamed from: v */
    private short[] f35271v;

    public C10912s(int i, int i2, float f, float f2, int i3) {
        this.f35267r = i;
        this.f35250a = i2;
        this.f35251b = f;
        this.f35252c = f2;
        this.f35253d = i / i3;
        this.f35268s = i / 400;
        int i4 = i / 65;
        this.f35269t = i4;
        int i5 = i4 * 2;
        this.f35254e = i5;
        this.f35270u = new short[i5];
        this.f35255f = new short[i5 * i2];
        this.f35257h = new short[i5 * i2];
        this.f35271v = new short[i5 * i2];
    }

    /* renamed from: a */
    private int m21973a(short[] sArr, int i, int i2, int i3) {
        int i4 = i * this.f35250a;
        int i5 = 1;
        int i6 = 255;
        int i7 = 0;
        int i8 = 0;
        while (true) {
            int i9 = i8;
            if (i2 > i3) {
                this.f35265p = i5 / i7;
                this.f35266q = i9 / i6;
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

    /* renamed from: a */
    private static void m21975a(int i, int i2, short[] sArr, int i3, short[] sArr2, int i4, short[] sArr3, int i5) {
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

    /* renamed from: b */
    private void m21971b(short[] sArr, int i, int i2) {
        short[] m21974a = m21974a(this.f35257h, this.f35258i, i2);
        this.f35257h = m21974a;
        int i3 = this.f35250a;
        System.arraycopy(sArr, i * i3, m21974a, this.f35258i * i3, i3 * i2);
        this.f35258i += i2;
    }

    /* renamed from: c */
    private void m21970c(short[] sArr, int i, int i2) {
        int i3 = this.f35254e / i2;
        int i4 = this.f35250a;
        int i5 = i2 * i4;
        for (int i6 = 0; i6 < i3; i6++) {
            short s = 0;
            for (int i7 = 0; i7 < i5; i7++) {
                s += sArr[(i6 * i5) + (i * i4) + i7];
            }
            this.f35270u[i6] = (short) (s / i5);
        }
    }

    /* renamed from: a */
    public final int m21976a() {
        return this.f35258i * this.f35250a * 2;
    }

    /* renamed from: a */
    public final short[] m21974a(short[] sArr, int i, int i2) {
        int length = sArr.length;
        int i3 = this.f35250a;
        int i4 = length / i3;
        return i + i2 <= i4 ? sArr : Arrays.copyOf(sArr, (((i4 * 3) / 2) + i2) * i3);
    }

    /* renamed from: b */
    public final void m21972b() {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8 = this.f35258i;
        float f = this.f35251b;
        float f2 = this.f35252c;
        float f3 = f / f2;
        float f4 = this.f35253d * f2;
        double d = f3;
        if (d > 1.00001d || d < 0.99999d) {
            int i9 = this.f35256g;
            if (i9 >= this.f35254e) {
                int i10 = 0;
                while (true) {
                    int i11 = i10;
                    int i12 = this.f35262m;
                    if (i12 > 0) {
                        int min = Math.min(this.f35254e, i12);
                        m21971b(this.f35255f, i11, min);
                        this.f35262m -= min;
                        i4 = i11 + min;
                    } else {
                        short[] sArr = this.f35255f;
                        int i13 = this.f35267r;
                        int i14 = i13 > 4000 ? i13 / ConferenceActivity.SNACK_BAR_DURATION : 1;
                        if (this.f35250a == 1 && i14 == 1) {
                            i5 = m21973a(sArr, i11, this.f35268s, this.f35269t);
                        } else {
                            m21970c(sArr, i11, i14);
                            int m21973a = m21973a(this.f35270u, 0, this.f35268s / i14, this.f35269t / i14);
                            if (i14 != 1) {
                                int i15 = m21973a * i14;
                                int i16 = i14 * 4;
                                int i17 = i15 - i16;
                                int i18 = i15 + i16;
                                int i19 = this.f35268s;
                                int i20 = i17;
                                if (i17 < i19) {
                                    i20 = i19;
                                }
                                int i21 = this.f35269t;
                                int i22 = i18;
                                if (i18 > i21) {
                                    i22 = i21;
                                }
                                if (this.f35250a == 1) {
                                    i5 = m21973a(sArr, i11, i20, i22);
                                } else {
                                    m21970c(sArr, i11, 1);
                                    i5 = m21973a(this.f35270u, 0, i20, i22);
                                }
                            } else {
                                i5 = m21973a;
                            }
                        }
                        int i23 = this.f35265p;
                        int i24 = i23 != 0 && this.f35263n != 0 && this.f35266q <= i23 * 3 && i23 * 2 > this.f35264o * 3 ? this.f35263n : i5;
                        this.f35264o = i23;
                        this.f35263n = i5;
                        if (d > 1.0d) {
                            short[] sArr2 = this.f35255f;
                            if (f3 >= 2.0f) {
                                i7 = (int) (i24 / (f3 - 1.0f));
                            } else {
                                this.f35262m = (int) ((i24 * (2.0f - f3)) / (f3 - 1.0f));
                                i7 = i24;
                            }
                            short[] m21974a = m21974a(this.f35257h, this.f35258i, i7);
                            this.f35257h = m21974a;
                            m21975a(i7, this.f35250a, m21974a, this.f35258i, sArr2, i11, sArr2, i11 + i24);
                            this.f35258i += i7;
                            i4 = i11 + i24 + i7;
                        } else {
                            short[] sArr3 = this.f35255f;
                            if (f3 < 0.5f) {
                                i6 = (int) ((i24 * f3) / (1.0f - f3));
                            } else {
                                this.f35262m = (int) ((i24 * ((2.0f * f3) - 1.0f)) / (1.0f - f3));
                                i6 = i24;
                            }
                            int i25 = i24 + i6;
                            short[] m21974a2 = m21974a(this.f35257h, this.f35258i, i25);
                            this.f35257h = m21974a2;
                            int i26 = this.f35250a;
                            System.arraycopy(sArr3, i11 * i26, m21974a2, this.f35258i * i26, i26 * i24);
                            m21975a(i6, this.f35250a, this.f35257h, this.f35258i + i24, sArr3, i11 + i24, sArr3, i11);
                            this.f35258i += i25;
                            i4 = i11 + i6;
                        }
                    }
                    if (this.f35254e + i4 > i9) {
                        break;
                    }
                    i10 = i4;
                }
                int i27 = this.f35256g - i4;
                short[] sArr4 = this.f35255f;
                int i28 = this.f35250a;
                System.arraycopy(sArr4, i4 * i28, sArr4, 0, i28 * i27);
                this.f35256g = i27;
            }
        } else {
            m21971b(this.f35255f, 0, this.f35256g);
            this.f35256g = 0;
        }
        if (f4 == 1.0f || this.f35258i == i8) {
            return;
        }
        int i29 = this.f35267r;
        int i30 = (int) (i29 / f4);
        while (true) {
            if (i30 <= 16384 && i29 <= 16384) {
                break;
            }
            i30 /= 2;
            i29 /= 2;
        }
        int i31 = this.f35258i - i8;
        short[] m21974a3 = m21974a(this.f35271v, this.f35259j, i31);
        this.f35271v = m21974a3;
        short[] sArr5 = this.f35257h;
        int i32 = this.f35250a;
        System.arraycopy(sArr5, i8 * i32, m21974a3, this.f35259j * i32, i32 * i31);
        this.f35258i = i8;
        this.f35259j += i31;
        int i33 = 0;
        while (true) {
            i = this.f35259j;
            if (i33 >= i - 1) {
                break;
            }
            while (true) {
                i2 = this.f35260k;
                i3 = this.f35261l;
                if ((i2 + 1) * i30 <= i3 * i29) {
                    break;
                }
                this.f35257h = m21974a(this.f35257h, this.f35258i, 1);
                int i34 = 0;
                while (true) {
                    int i35 = this.f35250a;
                    if (i34 < i35) {
                        short[] sArr6 = this.f35257h;
                        int i36 = this.f35258i;
                        short[] sArr7 = this.f35271v;
                        int i37 = (i33 * i35) + i34;
                        short s = sArr7[i37];
                        short s2 = sArr7[i37 + i35];
                        int i38 = this.f35261l;
                        int i39 = this.f35260k;
                        int i40 = (i39 + 1) * i30;
                        int i41 = i40 - (i38 * i29);
                        int i42 = i40 - (i39 * i30);
                        sArr6[(i36 * i35) + i34] = (short) (((s * i41) + ((i42 - i41) * s2)) / i42);
                        i34++;
                    }
                }
                this.f35261l++;
                this.f35258i++;
            }
            int i43 = i2 + 1;
            this.f35260k = i43;
            if (i43 == i29) {
                this.f35260k = 0;
                C11593a.m20019b(i3 == i30);
                this.f35261l = 0;
            }
            i33++;
        }
        int i44 = i - 1;
        if (i44 == 0) {
            return;
        }
        short[] sArr8 = this.f35271v;
        int i45 = this.f35250a;
        System.arraycopy(sArr8, i44 * i45, sArr8, 0, (i - i44) * i45);
        this.f35259j -= i44;
    }
}
