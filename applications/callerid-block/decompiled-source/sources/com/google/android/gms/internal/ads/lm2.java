package com.google.android.gms.internal.ads;

import java.nio.ShortBuffer;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/lm2.class */
final class lm2 {

    /* renamed from: a */
    private final int f7105a;

    /* renamed from: b */
    private final int f7106b;

    /* renamed from: c */
    private final int f7107c;

    /* renamed from: d */
    private final int f7108d;

    /* renamed from: e */
    private final int f7109e;

    /* renamed from: f */
    private final short[] f7110f;

    /* renamed from: g */
    private int f7111g;

    /* renamed from: h */
    private short[] f7112h;

    /* renamed from: i */
    private int f7113i;

    /* renamed from: j */
    private short[] f7114j;

    /* renamed from: k */
    private int f7115k;

    /* renamed from: l */
    private short[] f7116l;

    /* renamed from: q */
    private int f7121q;

    /* renamed from: r */
    private int f7122r;

    /* renamed from: s */
    private int f7123s;

    /* renamed from: t */
    private int f7124t;

    /* renamed from: v */
    private int f7126v;

    /* renamed from: w */
    private int f7127w;

    /* renamed from: x */
    private int f7128x;

    /* renamed from: m */
    private int f7117m = 0;

    /* renamed from: n */
    private int f7118n = 0;

    /* renamed from: u */
    private int f7125u = 0;

    /* renamed from: o */
    private float f7119o = 1.0f;

    /* renamed from: p */
    private float f7120p = 1.0f;

    public lm2(int i, int i2) {
        this.f7105a = i;
        this.f7106b = i2;
        this.f7107c = i / 400;
        int i3 = i / 65;
        this.f7108d = i3;
        int i4 = i3 + i3;
        this.f7109e = i4;
        this.f7110f = new short[i4];
        this.f7111g = i4;
        int i5 = i2 * i4;
        this.f7112h = new short[i5];
        this.f7113i = i4;
        this.f7114j = new short[i5];
        this.f7115k = i4;
        this.f7116l = new short[i5];
    }

    /* renamed from: g */
    private final void m6689g(int i) {
        int i2 = this.f7122r;
        int i3 = this.f7113i;
        if (i2 + i > i3) {
            int i4 = i3 + (i3 / 2) + i;
            this.f7113i = i4;
            this.f7114j = Arrays.copyOf(this.f7114j, i4 * this.f7106b);
        }
    }

    /* renamed from: h */
    private final void m6688h(int i) {
        int i2 = this.f7121q;
        int i3 = this.f7111g;
        if (i2 + i > i3) {
            int i4 = i3 + (i3 / 2) + i;
            this.f7111g = i4;
            this.f7112h = Arrays.copyOf(this.f7112h, i4 * this.f7106b);
        }
    }

    /* renamed from: i */
    private final void m6687i(short[] sArr, int i, int i2) {
        m6689g(i2);
        int i3 = this.f7106b;
        System.arraycopy(sArr, i * i3, this.f7114j, this.f7122r * i3, i3 * i2);
        this.f7122r += i2;
    }

    /* renamed from: j */
    private final void m6686j(short[] sArr, int i, int i2) {
        int i3 = this.f7109e / i2;
        int i4 = this.f7106b;
        int i5 = i2 * i4;
        for (int i6 = 0; i6 < i3; i6++) {
            int i7 = 0;
            for (int i8 = 0; i8 < i5; i8++) {
                i7 += sArr[(i6 * i5) + (i * i4) + i8];
            }
            this.f7110f[i6] = (short) (i7 / i5);
        }
    }

    /* renamed from: k */
    private final int m6685k(short[] sArr, int i, int i2, int i3) {
        short s;
        short s2;
        int i4 = i * this.f7106b;
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
        this.f7127w = i5 / i7;
        this.f7128x = i8 / i6;
        return i7;
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x01a6, code lost:
        if ((r0 + r0) <= (r10.f7126v * 3)) goto L_0x01af;
     */
    /* renamed from: l */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void m6684l() {
        /*
            Method dump skipped, instructions count: 1269
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.lm2.m6684l():void");
    }

    /* renamed from: m */
    private static void m6683m(int i, int i2, short[] sArr, int i3, short[] sArr2, int i4, short[] sArr3, int i5) {
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
    public final void m6695a(float f) {
        this.f7119o = f;
    }

    /* renamed from: b */
    public final void m6694b(float f) {
        this.f7120p = f;
    }

    /* renamed from: c */
    public final void m6693c(ShortBuffer shortBuffer) {
        int remaining = shortBuffer.remaining();
        int i = this.f7106b;
        int i2 = remaining / i;
        int i3 = i * i2;
        m6688h(i2);
        shortBuffer.get(this.f7112h, this.f7121q * this.f7106b, (i3 + i3) / 2);
        this.f7121q += i2;
        m6684l();
    }

    /* renamed from: d */
    public final void m6692d(ShortBuffer shortBuffer) {
        int min = Math.min(shortBuffer.remaining() / this.f7106b, this.f7122r);
        shortBuffer.put(this.f7114j, 0, this.f7106b * min);
        int i = this.f7122r - min;
        this.f7122r = i;
        short[] sArr = this.f7114j;
        int i2 = this.f7106b;
        System.arraycopy(sArr, min * i2, sArr, 0, i * i2);
    }

    /* renamed from: e */
    public final void m6691e() {
        int i;
        int i2 = this.f7121q;
        float f = this.f7119o;
        float f2 = this.f7120p;
        int i3 = this.f7122r + ((int) ((((i2 / (f / f2)) + this.f7123s) / f2) + 0.5f));
        int i4 = this.f7109e;
        m6688h(i4 + i4 + i2);
        int i5 = 0;
        while (true) {
            int i6 = this.f7109e;
            i = i6 + i6;
            int i7 = this.f7106b;
            if (i5 >= i * i7) {
                break;
            }
            this.f7112h[(i7 * i2) + i5] = (short) 0;
            i5++;
        }
        this.f7121q += i;
        m6684l();
        if (this.f7122r > i3) {
            this.f7122r = i3;
        }
        this.f7121q = 0;
        this.f7124t = 0;
        this.f7123s = 0;
    }

    /* renamed from: f */
    public final int m6690f() {
        return this.f7122r;
    }
}
