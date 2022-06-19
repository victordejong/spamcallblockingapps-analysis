package com.google.android.gms.internal.ads;

import java.nio.ShortBuffer;
import java.util.Arrays;
/* renamed from: com.google.android.gms.internal.ads.zc */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zc.class */
final class C7214zc {

    /* renamed from: a */
    private final int f32868a;

    /* renamed from: b */
    private final int f32869b;

    /* renamed from: c */
    private final int f32870c;

    /* renamed from: d */
    private final int f32871d;

    /* renamed from: e */
    private final int f32872e;

    /* renamed from: f */
    private final short[] f32873f;

    /* renamed from: g */
    private int f32874g;

    /* renamed from: h */
    private short[] f32875h;

    /* renamed from: i */
    private int f32876i;

    /* renamed from: j */
    private short[] f32877j;

    /* renamed from: k */
    private int f32878k;

    /* renamed from: l */
    private short[] f32879l;

    /* renamed from: q */
    private int f32884q;

    /* renamed from: r */
    private int f32885r;

    /* renamed from: s */
    private int f32886s;

    /* renamed from: t */
    private int f32887t;

    /* renamed from: v */
    private int f32889v;

    /* renamed from: w */
    private int f32890w;

    /* renamed from: x */
    private int f32891x;

    /* renamed from: m */
    private int f32880m = 0;

    /* renamed from: n */
    private int f32881n = 0;

    /* renamed from: u */
    private int f32888u = 0;

    /* renamed from: o */
    private float f32882o = 1.0f;

    /* renamed from: p */
    private float f32883p = 1.0f;

    public C7214zc(int i, int i2) {
        this.f32868a = i;
        this.f32869b = i2;
        this.f32870c = i / 400;
        int i3 = i / 65;
        this.f32871d = i3;
        int i4 = i3 + i3;
        this.f32872e = i4;
        this.f32873f = new short[i4];
        this.f32874g = i4;
        int i5 = i2 * i4;
        this.f32875h = new short[i5];
        this.f32876i = i4;
        this.f32877j = new short[i5];
        this.f32878k = i4;
        this.f32879l = new short[i5];
    }

    /* renamed from: g */
    private final void m8445g(int i) {
        int i2 = this.f32885r;
        int i3 = this.f32876i;
        if (i2 + i > i3) {
            int i4 = i3 + (i3 / 2) + i;
            this.f32876i = i4;
            this.f32877j = Arrays.copyOf(this.f32877j, i4 * this.f32869b);
        }
    }

    /* renamed from: h */
    private final void m8444h(int i) {
        int i2 = this.f32884q;
        int i3 = this.f32874g;
        if (i2 + i > i3) {
            int i4 = i3 + (i3 / 2) + i;
            this.f32874g = i4;
            this.f32875h = Arrays.copyOf(this.f32875h, i4 * this.f32869b);
        }
    }

    /* renamed from: i */
    private final void m8443i(short[] sArr, int i, int i2) {
        m8445g(i2);
        int i3 = this.f32869b;
        System.arraycopy(sArr, i * i3, this.f32877j, this.f32885r * i3, i3 * i2);
        this.f32885r += i2;
    }

    /* renamed from: j */
    private final void m8442j(short[] sArr, int i, int i2) {
        int i3 = this.f32872e / i2;
        int i4 = this.f32869b;
        int i5 = i2 * i4;
        for (int i6 = 0; i6 < i3; i6++) {
            short s = 0;
            for (int i7 = 0; i7 < i5; i7++) {
                s += sArr[(i6 * i5) + (i * i4) + i7];
            }
            this.f32873f[i6] = (short) (s / i5);
        }
    }

    /* renamed from: k */
    private final int m8441k(short[] sArr, int i, int i2, int i3) {
        short s;
        short s2;
        int i4 = i * this.f32869b;
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
            int i11 = i9 * i7;
            int i12 = i5 * i2;
            if (i11 < i12) {
                i5 = i9;
            }
            if (i11 < i12) {
                i7 = i2;
            }
            int i13 = i9 * i6;
            int i14 = i8 * i2;
            if (i13 > i14) {
                i8 = i9;
            }
            if (i13 > i14) {
                i6 = i2;
            }
            i2++;
        }
        this.f32890w = i5 / i7;
        this.f32891x = i8 / i6;
        return i7;
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x01a6, code lost:
        if ((r0 + r0) <= (r10.f32889v * 3)) goto L43;
     */
    /* renamed from: l */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void m8440l() {
        /*
            Method dump skipped, instructions count: 1269
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.C7214zc.m8440l():void");
    }

    /* renamed from: m */
    private static void m8439m(int i, int i2, short[] sArr, int i3, short[] sArr2, int i4, short[] sArr3, int i5) {
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
    public final void m8451a(float f) {
        this.f32882o = f;
    }

    /* renamed from: b */
    public final void m8450b(float f) {
        this.f32883p = f;
    }

    /* renamed from: c */
    public final void m8449c(ShortBuffer shortBuffer) {
        int remaining = shortBuffer.remaining();
        int i = this.f32869b;
        int i2 = remaining / i;
        int i3 = i * i2;
        m8444h(i2);
        shortBuffer.get(this.f32875h, this.f32884q * this.f32869b, (i3 + i3) / 2);
        this.f32884q += i2;
        m8440l();
    }

    /* renamed from: d */
    public final void m8448d(ShortBuffer shortBuffer) {
        int min = Math.min(shortBuffer.remaining() / this.f32869b, this.f32885r);
        shortBuffer.put(this.f32877j, 0, this.f32869b * min);
        int i = this.f32885r - min;
        this.f32885r = i;
        short[] sArr = this.f32877j;
        int i2 = this.f32869b;
        System.arraycopy(sArr, min * i2, sArr, 0, i * i2);
    }

    /* renamed from: e */
    public final void m8447e() {
        int i;
        int i2 = this.f32884q;
        float f = this.f32882o;
        float f2 = this.f32883p;
        int i3 = this.f32885r + ((int) ((((i2 / (f / f2)) + this.f32886s) / f2) + 0.5f));
        int i4 = this.f32872e;
        m8444h(i4 + i4 + i2);
        int i5 = 0;
        while (true) {
            int i6 = this.f32872e;
            i = i6 + i6;
            int i7 = this.f32869b;
            if (i5 >= i * i7) {
                break;
            }
            this.f32875h[(i7 * i2) + i5] = (short) 0;
            i5++;
        }
        this.f32884q += i;
        m8440l();
        if (this.f32885r > i3) {
            this.f32885r = i3;
        }
        this.f32884q = 0;
        this.f32887t = 0;
        this.f32886s = 0;
    }

    /* renamed from: f */
    public final int m8446f() {
        return this.f32885r;
    }
}
