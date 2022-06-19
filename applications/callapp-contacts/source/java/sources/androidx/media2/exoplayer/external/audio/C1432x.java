package androidx.media2.exoplayer.external.audio;

import androidx.media2.exoplayer.external.util.C1993a;
import com.callapp.contacts.activity.contact.details.ConferenceActivity;
import java.util.Arrays;
/* renamed from: androidx.media2.exoplayer.external.audio.x */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/x.class */
final class C1432x {

    /* renamed from: a */
    final int f5417a;

    /* renamed from: b */
    final float f5418b;

    /* renamed from: c */
    final float f5419c;

    /* renamed from: d */
    final float f5420d;

    /* renamed from: e */
    final int f5421e;

    /* renamed from: f */
    short[] f5422f;

    /* renamed from: g */
    int f5423g;

    /* renamed from: h */
    short[] f5424h;

    /* renamed from: i */
    int f5425i;

    /* renamed from: j */
    int f5426j;

    /* renamed from: k */
    int f5427k;

    /* renamed from: l */
    int f5428l;

    /* renamed from: m */
    int f5429m;

    /* renamed from: n */
    int f5430n;

    /* renamed from: o */
    int f5431o;

    /* renamed from: p */
    int f5432p;

    /* renamed from: q */
    int f5433q;

    /* renamed from: r */
    private final int f5434r;

    /* renamed from: s */
    private final int f5435s;

    /* renamed from: t */
    private final int f5436t;

    /* renamed from: u */
    private final short[] f5437u;

    /* renamed from: v */
    private short[] f5438v;

    public C1432x(int i, int i2, float f, float f2, int i3) {
        this.f5434r = i;
        this.f5417a = i2;
        this.f5418b = f;
        this.f5419c = f2;
        this.f5420d = i / i3;
        this.f5435s = i / 400;
        int i4 = i / 65;
        this.f5436t = i4;
        int i5 = i4 * 2;
        this.f5421e = i5;
        this.f5437u = new short[i5];
        this.f5422f = new short[i5 * i2];
        this.f5424h = new short[i5 * i2];
        this.f5438v = new short[i5 * i2];
    }

    /* renamed from: a */
    private int m42955a(short[] sArr, int i, int i2, int i3) {
        int i4 = i * this.f5417a;
        int i5 = 1;
        int i6 = 255;
        int i7 = 0;
        int i8 = 0;
        while (true) {
            int i9 = i8;
            if (i2 > i3) {
                this.f5432p = i5 / i7;
                this.f5433q = i9 / i6;
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
    private static void m42957a(int i, int i2, short[] sArr, int i3, short[] sArr2, int i4, short[] sArr3, int i5) {
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
    private void m42953b(short[] sArr, int i, int i2) {
        short[] m42956a = m42956a(this.f5424h, this.f5425i, i2);
        this.f5424h = m42956a;
        int i3 = this.f5417a;
        System.arraycopy(sArr, i * i3, m42956a, this.f5425i * i3, i3 * i2);
        this.f5425i += i2;
    }

    /* renamed from: c */
    private void m42952c(short[] sArr, int i, int i2) {
        int i3 = this.f5421e / i2;
        int i4 = this.f5417a;
        int i5 = i2 * i4;
        for (int i6 = 0; i6 < i3; i6++) {
            short s = 0;
            for (int i7 = 0; i7 < i5; i7++) {
                s += sArr[(i6 * i5) + (i * i4) + i7];
            }
            this.f5437u[i6] = (short) (s / i5);
        }
    }

    /* renamed from: a */
    public final int m42958a() {
        return this.f5425i * this.f5417a * 2;
    }

    /* renamed from: a */
    public final short[] m42956a(short[] sArr, int i, int i2) {
        int length = sArr.length;
        int i3 = this.f5417a;
        int i4 = length / i3;
        return i + i2 <= i4 ? sArr : Arrays.copyOf(sArr, (((i4 * 3) / 2) + i2) * i3);
    }

    /* renamed from: b */
    public final void m42954b() {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8 = this.f5425i;
        float f = this.f5418b;
        float f2 = this.f5419c;
        float f3 = f / f2;
        float f4 = this.f5420d * f2;
        double d = f3;
        if (d > 1.00001d || d < 0.99999d) {
            int i9 = this.f5423g;
            if (i9 >= this.f5421e) {
                int i10 = 0;
                while (true) {
                    int i11 = i10;
                    int i12 = this.f5429m;
                    if (i12 > 0) {
                        int min = Math.min(this.f5421e, i12);
                        m42953b(this.f5422f, i11, min);
                        this.f5429m -= min;
                        i4 = i11 + min;
                    } else {
                        short[] sArr = this.f5422f;
                        int i13 = this.f5434r;
                        int i14 = i13 > 4000 ? i13 / ConferenceActivity.SNACK_BAR_DURATION : 1;
                        if (this.f5417a == 1 && i14 == 1) {
                            i5 = m42955a(sArr, i11, this.f5435s, this.f5436t);
                        } else {
                            m42952c(sArr, i11, i14);
                            int m42955a = m42955a(this.f5437u, 0, this.f5435s / i14, this.f5436t / i14);
                            if (i14 != 1) {
                                int i15 = m42955a * i14;
                                int i16 = i14 * 4;
                                int i17 = i15 - i16;
                                int i18 = i15 + i16;
                                int i19 = this.f5435s;
                                int i20 = i17;
                                if (i17 < i19) {
                                    i20 = i19;
                                }
                                int i21 = this.f5436t;
                                int i22 = i18;
                                if (i18 > i21) {
                                    i22 = i21;
                                }
                                if (this.f5417a == 1) {
                                    i5 = m42955a(sArr, i11, i20, i22);
                                } else {
                                    m42952c(sArr, i11, 1);
                                    i5 = m42955a(this.f5437u, 0, i20, i22);
                                }
                            } else {
                                i5 = m42955a;
                            }
                        }
                        int i23 = this.f5432p;
                        int i24 = i23 != 0 && this.f5430n != 0 && this.f5433q <= i23 * 3 && i23 * 2 > this.f5431o * 3 ? this.f5430n : i5;
                        this.f5431o = i23;
                        this.f5430n = i5;
                        if (d > 1.0d) {
                            short[] sArr2 = this.f5422f;
                            if (f3 >= 2.0f) {
                                i7 = (int) (i24 / (f3 - 1.0f));
                            } else {
                                this.f5429m = (int) ((i24 * (2.0f - f3)) / (f3 - 1.0f));
                                i7 = i24;
                            }
                            short[] m42956a = m42956a(this.f5424h, this.f5425i, i7);
                            this.f5424h = m42956a;
                            m42957a(i7, this.f5417a, m42956a, this.f5425i, sArr2, i11, sArr2, i11 + i24);
                            this.f5425i += i7;
                            i4 = i11 + i24 + i7;
                        } else {
                            short[] sArr3 = this.f5422f;
                            if (f3 < 0.5f) {
                                i6 = (int) ((i24 * f3) / (1.0f - f3));
                            } else {
                                this.f5429m = (int) ((i24 * ((2.0f * f3) - 1.0f)) / (1.0f - f3));
                                i6 = i24;
                            }
                            int i25 = i24 + i6;
                            short[] m42956a2 = m42956a(this.f5424h, this.f5425i, i25);
                            this.f5424h = m42956a2;
                            int i26 = this.f5417a;
                            System.arraycopy(sArr3, i11 * i26, m42956a2, this.f5425i * i26, i26 * i24);
                            m42957a(i6, this.f5417a, this.f5424h, this.f5425i + i24, sArr3, i11 + i24, sArr3, i11);
                            this.f5425i += i25;
                            i4 = i11 + i6;
                        }
                    }
                    if (this.f5421e + i4 > i9) {
                        break;
                    }
                    i10 = i4;
                }
                int i27 = this.f5423g - i4;
                short[] sArr4 = this.f5422f;
                int i28 = this.f5417a;
                System.arraycopy(sArr4, i4 * i28, sArr4, 0, i28 * i27);
                this.f5423g = i27;
            }
        } else {
            m42953b(this.f5422f, 0, this.f5423g);
            this.f5423g = 0;
        }
        if (f4 == 1.0f || this.f5425i == i8) {
            return;
        }
        int i29 = this.f5434r;
        int i30 = (int) (i29 / f4);
        while (true) {
            if (i30 <= 16384 && i29 <= 16384) {
                break;
            }
            i30 /= 2;
            i29 /= 2;
        }
        int i31 = this.f5425i - i8;
        short[] m42956a3 = m42956a(this.f5438v, this.f5426j, i31);
        this.f5438v = m42956a3;
        short[] sArr5 = this.f5424h;
        int i32 = this.f5417a;
        System.arraycopy(sArr5, i8 * i32, m42956a3, this.f5426j * i32, i32 * i31);
        this.f5425i = i8;
        this.f5426j += i31;
        int i33 = 0;
        while (true) {
            i = this.f5426j;
            if (i33 >= i - 1) {
                break;
            }
            while (true) {
                i2 = this.f5427k;
                i3 = this.f5428l;
                if ((i2 + 1) * i30 <= i3 * i29) {
                    break;
                }
                this.f5424h = m42956a(this.f5424h, this.f5425i, 1);
                int i34 = 0;
                while (true) {
                    int i35 = this.f5417a;
                    if (i34 < i35) {
                        short[] sArr6 = this.f5424h;
                        int i36 = this.f5425i;
                        short[] sArr7 = this.f5438v;
                        int i37 = (i33 * i35) + i34;
                        short s = sArr7[i37];
                        short s2 = sArr7[i37 + i35];
                        int i38 = this.f5428l;
                        int i39 = this.f5427k;
                        int i40 = (i39 + 1) * i30;
                        int i41 = i40 - (i38 * i29);
                        int i42 = i40 - (i39 * i30);
                        sArr6[(i36 * i35) + i34] = (short) (((s * i41) + ((i42 - i41) * s2)) / i42);
                        i34++;
                    }
                }
                this.f5428l++;
                this.f5425i++;
            }
            int i43 = i2 + 1;
            this.f5427k = i43;
            if (i43 == i29) {
                this.f5427k = 0;
                C1993a.m41686b(i3 == i30);
                this.f5428l = 0;
            }
            i33++;
        }
        int i44 = i - 1;
        if (i44 == 0) {
            return;
        }
        short[] sArr8 = this.f5438v;
        int i45 = this.f5417a;
        System.arraycopy(sArr8, i44 * i45, sArr8, 0, (i - i44) * i45);
        this.f5426j -= i44;
    }
}
