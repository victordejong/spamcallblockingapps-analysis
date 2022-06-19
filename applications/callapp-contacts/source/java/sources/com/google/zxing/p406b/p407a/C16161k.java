package com.google.zxing.p406b.p407a;

import com.explorestack.protobuf.openrtb.LossReason;
import com.google.zxing.C16149b;
import com.twitter.sdk.android.core.TwitterAuthConfig;
/* renamed from: com.google.zxing.b.a.k */
/* loaded from: classes4-dex2jar.jar:com/google/zxing/b/a/k.class */
public class C16161k {

    /* renamed from: a */
    static final C16161k[] f57092a;

    /* renamed from: g */
    private static C16161k[] f57093g;

    /* renamed from: b */
    final int f57094b;

    /* renamed from: c */
    final int f57095c;

    /* renamed from: d */
    public final int f57096d;

    /* renamed from: e */
    public final int f57097e;

    /* renamed from: f */
    final int f57098f;

    /* renamed from: h */
    private final boolean f57099h;

    /* renamed from: i */
    private final int f57100i;

    /* renamed from: j */
    private final int f57101j;

    static {
        C16161k[] c16161kArr = {new C16161k(false, 3, 5, 8, 8, 1), new C16161k(false, 5, 7, 10, 10, 1), new C16161k(true, 5, 7, 16, 6, 1), new C16161k(false, 8, 10, 12, 12, 1), new C16161k(true, 10, 11, 14, 6, 2), new C16161k(false, 12, 12, 14, 14, 1), new C16161k(true, 16, 14, 24, 10, 1), new C16161k(false, 18, 14, 16, 16, 1), new C16161k(false, 22, 18, 18, 18, 1), new C16161k(true, 22, 18, 16, 10, 2), new C16161k(false, 30, 20, 20, 20, 1), new C16161k(true, 32, 24, 16, 14, 2), new C16161k(false, 36, 24, 22, 22, 1), new C16161k(false, 44, 28, 24, 24, 1), new C16161k(true, 49, 28, 22, 14, 2), new C16161k(false, 62, 36, 14, 14, 4), new C16161k(false, 86, 42, 16, 16, 4), new C16161k(false, 114, 48, 18, 18, 4), new C16161k(false, 144, 56, 20, 20, 4), new C16161k(false, 174, 68, 22, 22, 4), new C16161k(false, LossReason.LOSS_REASON_CREATIVE_FILTERED_INCORRECT_CREATIVE_FORMAT_VALUE, 84, 24, 24, 4, 102, 42), new C16161k(false, 280, 112, 14, 14, 16, TwitterAuthConfig.DEFAULT_AUTH_REQUEST_CODE, 56), new C16161k(false, 368, 144, 16, 16, 16, 92, 36), new C16161k(false, 456, 192, 18, 18, 16, 114, 48), new C16161k(false, 576, 224, 20, 20, 16, 144, 56), new C16161k(false, 696, 272, 22, 22, 16, 174, 68), new C16161k(false, 816, 336, 24, 24, 16, 136, 56), new C16161k(false, 1050, 408, 18, 18, 36, 175, 68), new C16161k(false, 1304, 496, 20, 20, 36, 163, 62), new C16154d()};
        f57092a = c16161kArr;
        f57093g = c16161kArr;
    }

    public C16161k(boolean z, int i, int i2, int i3, int i4, int i5) {
        this(z, i, i2, i3, i4, i5, i, i2);
    }

    public C16161k(boolean z, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        this.f57099h = z;
        this.f57094b = i;
        this.f57095c = i2;
        this.f57096d = i3;
        this.f57097e = i4;
        this.f57100i = i5;
        this.f57101j = i6;
        this.f57098f = i7;
    }

    /* renamed from: a */
    public static C16161k m7713a(int i, EnumC16162l enumC16162l, C16149b c16149b, C16149b c16149b2) {
        C16161k[] c16161kArr;
        for (C16161k c16161k : f57093g) {
            if ((enumC16162l != EnumC16162l.FORCE_SQUARE || !c16161k.f57099h) && ((enumC16162l != EnumC16162l.FORCE_RECTANGLE || c16161k.f57099h) && ((c16149b == null || (c16161k.m7710d() >= c16149b.f57073a && c16161k.m7709e() >= c16149b.f57074b)) && ((c16149b2 == null || (c16161k.m7710d() <= c16149b2.f57073a && c16161k.m7709e() <= c16149b2.f57074b)) && i <= c16161k.f57094b)))) {
                return c16161k;
            }
        }
        throw new IllegalArgumentException("Can't find a symbol arrangement that matches the message. Data codewords: ".concat(String.valueOf(i)));
    }

    /* renamed from: f */
    private int m7708f() {
        int i = this.f57100i;
        int i2 = 1;
        if (i != 1) {
            i2 = 2;
            if (i != 2) {
                i2 = 2;
                if (i != 4) {
                    if (i == 16) {
                        return 4;
                    }
                    if (i != 36) {
                        throw new IllegalStateException("Cannot handle this number of data regions");
                    }
                    return 6;
                }
            }
        }
        return i2;
    }

    /* renamed from: g */
    private int m7707g() {
        int i = this.f57100i;
        if (i == 1 || i == 2) {
            return 1;
        }
        if (i == 4) {
            return 2;
        }
        if (i == 16) {
            return 4;
        }
        if (i != 36) {
            throw new IllegalStateException("Cannot handle this number of data regions");
        }
        return 6;
    }

    /* renamed from: a */
    public int mo7715a() {
        return this.f57094b / this.f57101j;
    }

    /* renamed from: a */
    public int mo7714a(int i) {
        return this.f57101j;
    }

    /* renamed from: b */
    public final int m7712b() {
        return m7708f() * this.f57096d;
    }

    /* renamed from: c */
    public final int m7711c() {
        return m7707g() * this.f57097e;
    }

    /* renamed from: d */
    public final int m7710d() {
        return m7712b() + (m7708f() << 1);
    }

    /* renamed from: e */
    public final int m7709e() {
        return m7711c() + (m7707g() << 1);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f57099h ? "Rectangular Symbol:" : "Square Symbol:");
        sb.append(" data region ");
        sb.append(this.f57096d);
        sb.append('x');
        sb.append(this.f57097e);
        sb.append(", symbol size ");
        sb.append(m7710d());
        sb.append('x');
        sb.append(m7709e());
        sb.append(", symbol data size ");
        sb.append(m7712b());
        sb.append('x');
        sb.append(m7711c());
        sb.append(", codewords ");
        sb.append(this.f57094b);
        sb.append('+');
        sb.append(this.f57095c);
        return sb.toString();
    }
}
