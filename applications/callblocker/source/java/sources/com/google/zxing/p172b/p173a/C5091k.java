package com.google.zxing.p172b.p173a;

import com.google.zxing.C5079b;
/* renamed from: com.google.zxing.b.a.k */
/* loaded from: classes-dex2jar.jar:com/google/zxing/b/a/k.class */
public class C5091k {

    /* renamed from: a */
    static final C5091k[] f21544a;

    /* renamed from: d */
    private static C5091k[] f21545d;

    /* renamed from: b */
    public final int f21546b;

    /* renamed from: c */
    public final int f21547c;

    /* renamed from: e */
    private final boolean f21548e;

    /* renamed from: f */
    private final int f21549f;

    /* renamed from: g */
    private final int f21550g;

    /* renamed from: h */
    private final int f21551h;

    /* renamed from: i */
    private final int f21552i;

    /* renamed from: j */
    private final int f21553j;

    static {
        C5091k[] c5091kArr = {new C5091k(false, 3, 5, 8, 8, 1), new C5091k(false, 5, 7, 10, 10, 1), new C5091k(true, 5, 7, 16, 6, 1), new C5091k(false, 8, 10, 12, 12, 1), new C5091k(true, 10, 11, 14, 6, 2), new C5091k(false, 12, 12, 14, 14, 1), new C5091k(true, 16, 14, 24, 10, 1), new C5091k(false, 18, 14, 16, 16, 1), new C5091k(false, 22, 18, 18, 18, 1), new C5091k(true, 22, 18, 16, 10, 2), new C5091k(false, 30, 20, 20, 20, 1), new C5091k(true, 32, 24, 16, 14, 2), new C5091k(false, 36, 24, 22, 22, 1), new C5091k(false, 44, 28, 24, 24, 1), new C5091k(true, 49, 28, 22, 14, 2), new C5091k(false, 62, 36, 14, 14, 4), new C5091k(false, 86, 42, 16, 16, 4), new C5091k(false, 114, 48, 18, 18, 4), new C5091k(false, 144, 56, 20, 20, 4), new C5091k(false, 174, 68, 22, 22, 4), new C5091k(false, 204, 84, 24, 24, 4, 102, 42), new C5091k(false, 280, 112, 14, 14, 16, 140, 56), new C5091k(false, 368, 144, 16, 16, 16, 92, 36), new C5091k(false, 456, 192, 18, 18, 16, 114, 48), new C5091k(false, 576, 224, 20, 20, 16, 144, 56), new C5091k(false, 696, 272, 22, 22, 16, 174, 68), new C5091k(false, 816, 336, 24, 24, 16, 136, 56), new C5091k(false, 1050, 408, 18, 18, 36, 175, 68), new C5091k(false, 1304, 496, 20, 20, 36, 163, 62), new C5084d()};
        f21544a = c5091kArr;
        f21545d = c5091kArr;
    }

    public C5091k(boolean z, int i, int i2, int i3, int i4, int i5) {
        this(z, i, i2, i3, i4, i5, i, i2);
    }

    public C5091k(boolean z, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        this.f21548e = z;
        this.f21549f = i;
        this.f21550g = i2;
        this.f21546b = i3;
        this.f21547c = i4;
        this.f21551h = i5;
        this.f21552i = i6;
        this.f21553j = i7;
    }

    /* renamed from: a */
    public static C5091k m1504a(int i, EnumC5092l enumC5092l, C5079b c5079b, C5079b c5079b2, boolean z) {
        C5091k c5091k;
        C5091k[] c5091kArr = f21545d;
        int length = c5091kArr.length;
        int i2 = 0;
        while (true) {
            if (i2 < length) {
                C5091k c5091k2 = c5091kArr[i2];
                if ((enumC5092l != EnumC5092l.FORCE_SQUARE || !c5091k2.f21548e) && ((enumC5092l != EnumC5092l.FORCE_RECTANGLE || c5091k2.f21548e) && ((c5079b == null || (c5091k2.m1500d() >= c5079b.m1568a() && c5091k2.m1499e() >= c5079b.m1567b())) && ((c5079b2 == null || (c5091k2.m1500d() <= c5079b2.m1568a() && c5091k2.m1499e() <= c5079b2.m1567b())) && i <= c5091k2.f21549f)))) {
                    c5091k = c5091k2;
                    break;
                }
                i2++;
            } else if (z) {
                throw new IllegalArgumentException("Can't find a symbol arrangement that matches the message. Data codewords: ".concat(String.valueOf(i)));
            } else {
                c5091k = null;
            }
        }
        return c5091k;
    }

    /* renamed from: h */
    private int m1496h() {
        int i;
        switch (this.f21551h) {
            case 1:
                i = 1;
                break;
            case 2:
            case 4:
                i = 2;
                break;
            case 16:
                i = 4;
                break;
            case 36:
                i = 6;
                break;
            default:
                throw new IllegalStateException("Cannot handle this number of data regions");
        }
        return i;
    }

    /* renamed from: i */
    private int m1495i() {
        int i;
        switch (this.f21551h) {
            case 1:
            case 2:
                i = 1;
                break;
            case 4:
                i = 2;
                break;
            case 16:
                i = 4;
                break;
            case 36:
                i = 6;
                break;
            default:
                throw new IllegalStateException("Cannot handle this number of data regions");
        }
        return i;
    }

    /* renamed from: a */
    public int mo1506a() {
        return this.f21549f / this.f21552i;
    }

    /* renamed from: a */
    public int mo1505a(int i) {
        return this.f21552i;
    }

    /* renamed from: b */
    public final int m1503b() {
        return m1496h() * this.f21546b;
    }

    /* renamed from: b */
    public final int m1502b(int i) {
        return this.f21553j;
    }

    /* renamed from: c */
    public final int m1501c() {
        return m1495i() * this.f21547c;
    }

    /* renamed from: d */
    public final int m1500d() {
        return m1503b() + (m1496h() << 1);
    }

    /* renamed from: e */
    public final int m1499e() {
        return m1501c() + (m1495i() << 1);
    }

    /* renamed from: f */
    public final int m1498f() {
        return this.f21549f;
    }

    /* renamed from: g */
    public final int m1497g() {
        return this.f21550g;
    }

    public final String toString() {
        return (this.f21548e ? "Rectangular Symbol:" : "Square Symbol:") + " data region " + this.f21546b + 'x' + this.f21547c + ", symbol size " + m1500d() + 'x' + m1499e() + ", symbol data size " + m1503b() + 'x' + m1501c() + ", codewords " + this.f21549f + '+' + this.f21550g;
    }
}
