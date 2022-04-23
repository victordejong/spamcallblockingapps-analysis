package com.google.zxing.b.a;

import com.explorestack.protobuf.openrtb.LossReason;
import com.google.zxing.b;
import com.twitter.sdk.android.core.TwitterAuthConfig;
/* loaded from: classes4-dex2jar.jar:com/google/zxing/b/a/k.class */
public class k {

    /* renamed from: a  reason: collision with root package name */
    static final k[] f32933a;
    private static k[] g;

    /* renamed from: b  reason: collision with root package name */
    final int f32934b;

    /* renamed from: c  reason: collision with root package name */
    final int f32935c;

    /* renamed from: d  reason: collision with root package name */
    public final int f32936d;
    public final int e;
    final int f;
    private final boolean h;
    private final int i;
    private final int j;

    static {
        k[] kVarArr = {new k(false, 3, 5, 8, 8, 1), new k(false, 5, 7, 10, 10, 1), new k(true, 5, 7, 16, 6, 1), new k(false, 8, 10, 12, 12, 1), new k(true, 10, 11, 14, 6, 2), new k(false, 12, 12, 14, 14, 1), new k(true, 16, 14, 24, 10, 1), new k(false, 18, 14, 16, 16, 1), new k(false, 22, 18, 18, 18, 1), new k(true, 22, 18, 16, 10, 2), new k(false, 30, 20, 20, 20, 1), new k(true, 32, 24, 16, 14, 2), new k(false, 36, 24, 22, 22, 1), new k(false, 44, 28, 24, 24, 1), new k(true, 49, 28, 22, 14, 2), new k(false, 62, 36, 14, 14, 4), new k(false, 86, 42, 16, 16, 4), new k(false, 114, 48, 18, 18, 4), new k(false, 144, 56, 20, 20, 4), new k(false, 174, 68, 22, 22, 4), new k(false, LossReason.LOSS_REASON_CREATIVE_FILTERED_INCORRECT_CREATIVE_FORMAT_VALUE, 84, 24, 24, 4, 102, 42), new k(false, 280, 112, 14, 14, 16, TwitterAuthConfig.DEFAULT_AUTH_REQUEST_CODE, 56), new k(false, 368, 144, 16, 16, 16, 92, 36), new k(false, 456, 192, 18, 18, 16, 114, 48), new k(false, 576, 224, 20, 20, 16, 144, 56), new k(false, 696, 272, 22, 22, 16, 174, 68), new k(false, 816, 336, 24, 24, 16, 136, 56), new k(false, 1050, 408, 18, 18, 36, 175, 68), new k(false, 1304, 496, 20, 20, 36, 163, 62), new d()};
        f32933a = kVarArr;
        g = kVarArr;
    }

    public k(boolean z, int i, int i2, int i3, int i4, int i5) {
        this(z, i, i2, i3, i4, i5, i, i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(boolean z, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        this.h = z;
        this.f32934b = i;
        this.f32935c = i2;
        this.f32936d = i3;
        this.e = i4;
        this.i = i5;
        this.j = i6;
        this.f = i7;
    }

    public static k a(int i, l lVar, b bVar, b bVar2) {
        k[] kVarArr;
        for (k kVar : g) {
            if ((lVar != l.FORCE_SQUARE || !kVar.h) && ((lVar != l.FORCE_RECTANGLE || kVar.h) && ((bVar == null || (kVar.d() >= bVar.f32919a && kVar.e() >= bVar.f32920b)) && ((bVar2 == null || (kVar.d() <= bVar2.f32919a && kVar.e() <= bVar2.f32920b)) && i <= kVar.f32934b)))) {
                return kVar;
            }
        }
        throw new IllegalArgumentException("Can't find a symbol arrangement that matches the message. Data codewords: ".concat(String.valueOf(i)));
    }

    private int f() {
        int i = this.i;
        int i2 = 1;
        if (i != 1) {
            i2 = 2;
            if (i != 2) {
                i2 = 2;
                if (i != 4) {
                    if (i == 16) {
                        return 4;
                    }
                    if (i == 36) {
                        return 6;
                    }
                    throw new IllegalStateException("Cannot handle this number of data regions");
                }
            }
        }
        return i2;
    }

    private int g() {
        int i = this.i;
        if (i == 1 || i == 2) {
            return 1;
        }
        if (i == 4) {
            return 2;
        }
        if (i == 16) {
            return 4;
        }
        if (i == 36) {
            return 6;
        }
        throw new IllegalStateException("Cannot handle this number of data regions");
    }

    public int a() {
        return this.f32934b / this.j;
    }

    public int a(int i) {
        return this.j;
    }

    public final int b() {
        return f() * this.f32936d;
    }

    public final int c() {
        return g() * this.e;
    }

    public final int d() {
        return b() + (f() << 1);
    }

    public final int e() {
        return c() + (g() << 1);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.h ? "Rectangular Symbol:" : "Square Symbol:");
        sb.append(" data region ");
        sb.append(this.f32936d);
        sb.append('x');
        sb.append(this.e);
        sb.append(", symbol size ");
        sb.append(d());
        sb.append('x');
        sb.append(e());
        sb.append(", symbol data size ");
        sb.append(b());
        sb.append('x');
        sb.append(c());
        sb.append(", codewords ");
        sb.append(this.f32934b);
        sb.append('+');
        sb.append(this.f32935c);
        return sb.toString();
    }
}
