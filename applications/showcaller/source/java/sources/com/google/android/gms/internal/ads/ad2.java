package com.google.android.gms.internal.ads;

import java.nio.ShortBuffer;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ad2.class */
final class ad2 {

    /* renamed from: a */
    private final int f19889a;

    /* renamed from: b */
    private final int f19890b;

    /* renamed from: c */
    private final float f19891c;

    /* renamed from: d */
    private final float f19892d;

    /* renamed from: e */
    private final float f19893e;

    /* renamed from: f */
    private final int f19894f;

    /* renamed from: g */
    private final int f19895g;

    /* renamed from: h */
    private final int f19896h;

    /* renamed from: i */
    private final short[] f19897i;

    /* renamed from: j */
    private short[] f19898j;

    /* renamed from: k */
    private int f19899k;

    /* renamed from: l */
    private short[] f19900l;

    /* renamed from: m */
    private int f19901m;

    /* renamed from: n */
    private short[] f19902n;

    /* renamed from: o */
    private int f19903o;

    /* renamed from: p */
    private int f19904p;

    /* renamed from: q */
    private int f19905q;

    /* renamed from: r */
    private int f19906r;

    /* renamed from: s */
    private int f19907s;

    /* renamed from: t */
    private int f19908t;

    /* renamed from: u */
    private int f19909u;

    /* renamed from: v */
    private int f19910v;

    public ad2(int i, int i2, float f, float f2, int i3) {
        this.f19889a = i;
        this.f19890b = i2;
        this.f19891c = f;
        this.f19892d = f2;
        this.f19893e = i / i3;
        this.f19894f = i / 400;
        int i4 = i / 65;
        this.f19895g = i4;
        int i5 = i4 + i4;
        this.f19896h = i5;
        this.f19897i = new short[i5];
        int i6 = i5 * i2;
        this.f19898j = new short[i6];
        this.f19900l = new short[i6];
        this.f19902n = new short[i6];
    }

    /* renamed from: g */
    private final short[] m16629g(short[] sArr, int i, int i2) {
        int length = sArr.length;
        int i3 = this.f19890b;
        int i4 = length / i3;
        return i + i2 <= i4 ? sArr : Arrays.copyOf(sArr, (((i4 * 3) / 2) + i2) * i3);
    }

    /* renamed from: h */
    private final void m16628h(short[] sArr, int i, int i2) {
        short[] m16629g = m16629g(this.f19900l, this.f19901m, i2);
        this.f19900l = m16629g;
        int i3 = this.f19890b;
        System.arraycopy(sArr, i * i3, m16629g, this.f19901m * i3, i3 * i2);
        this.f19901m += i2;
    }

    /* renamed from: i */
    private final void m16627i(short[] sArr, int i, int i2) {
        int i3 = this.f19896h / i2;
        int i4 = this.f19890b;
        int i5 = i2 * i4;
        for (int i6 = 0; i6 < i3; i6++) {
            short s = 0;
            for (int i7 = 0; i7 < i5; i7++) {
                s += sArr[(i6 * i5) + (i * i4) + i7];
            }
            this.f19897i[i6] = (short) (s / i5);
        }
    }

    /* renamed from: j */
    private final int m16626j(short[] sArr, int i, int i2, int i3) {
        int i4 = i * this.f19890b;
        int i5 = 1;
        int i6 = 255;
        int i7 = 0;
        int i8 = 0;
        while (i2 <= i3) {
            int i9 = 0;
            for (int i10 = 0; i10 < i2; i10++) {
                i9 += Math.abs(sArr[i4 + i10] - sArr[(i4 + i2) + i10]);
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
        this.f19909u = i5 / i7;
        this.f19910v = i8 / i6;
        return i7;
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x01b4, code lost:
        if ((r0 + r0) <= (r10.f19908t * 3)) goto L43;
     */
    /* renamed from: k */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void m16625k() {
        /*
            Method dump skipped, instructions count: 1281
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.ad2.m16625k():void");
    }

    /* renamed from: l */
    private static void m16624l(int i, int i2, short[] sArr, int i3, short[] sArr2, int i4, short[] sArr3, int i5) {
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
    public final int m16635a() {
        int i = this.f19899k * this.f19890b;
        return i + i;
    }

    /* renamed from: b */
    public final void m16634b(ShortBuffer shortBuffer) {
        int remaining = shortBuffer.remaining();
        int i = this.f19890b;
        int i2 = remaining / i;
        int i3 = i * i2;
        short[] m16629g = m16629g(this.f19898j, this.f19899k, i2);
        this.f19898j = m16629g;
        shortBuffer.get(m16629g, this.f19899k * this.f19890b, (i3 + i3) / 2);
        this.f19899k += i2;
        m16625k();
    }

    /* renamed from: c */
    public final void m16633c(ShortBuffer shortBuffer) {
        int min = Math.min(shortBuffer.remaining() / this.f19890b, this.f19901m);
        shortBuffer.put(this.f19900l, 0, this.f19890b * min);
        int i = this.f19901m - min;
        this.f19901m = i;
        short[] sArr = this.f19900l;
        int i2 = this.f19890b;
        System.arraycopy(sArr, min * i2, sArr, 0, i * i2);
    }

    /* renamed from: d */
    public final void m16632d() {
        int i;
        int i2 = this.f19899k;
        float f = this.f19891c;
        float f2 = this.f19892d;
        int i3 = this.f19901m + ((int) ((((i2 / (f / f2)) + this.f19903o) / (this.f19893e * f2)) + 0.5f));
        short[] sArr = this.f19898j;
        int i4 = this.f19896h;
        this.f19898j = m16629g(sArr, i2, i4 + i4 + i2);
        int i5 = 0;
        while (true) {
            int i6 = this.f19896h;
            i = i6 + i6;
            int i7 = this.f19890b;
            if (i5 >= i * i7) {
                break;
            }
            this.f19898j[(i7 * i2) + i5] = (short) 0;
            i5++;
        }
        this.f19899k += i;
        m16625k();
        if (this.f19901m > i3) {
            this.f19901m = i3;
        }
        this.f19899k = 0;
        this.f19906r = 0;
        this.f19903o = 0;
    }

    /* renamed from: e */
    public final void m16631e() {
        this.f19899k = 0;
        this.f19901m = 0;
        this.f19903o = 0;
        this.f19904p = 0;
        this.f19905q = 0;
        this.f19906r = 0;
        this.f19907s = 0;
        this.f19908t = 0;
        this.f19909u = 0;
        this.f19910v = 0;
    }

    /* renamed from: f */
    public final int m16630f() {
        int i = this.f19901m * this.f19890b;
        return i + i;
    }
}
