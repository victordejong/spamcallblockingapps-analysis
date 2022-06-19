package com.google.zxing.common.reedsolomon;

import com.explorestack.iab.vast.VastError;
import io.objectbox.model.PropertyFlags;
/* renamed from: com.google.zxing.common.reedsolomon.a */
/* loaded from: classes4-dex2jar.jar:com/google/zxing/common/reedsolomon/a.class */
public final class C16193a {

    /* renamed from: c */
    public static final C16193a f57163c;

    /* renamed from: f */
    public static final C16193a f57166f;

    /* renamed from: g */
    public static final C16193a f57167g;

    /* renamed from: h */
    public static final C16193a f57168h;

    /* renamed from: i */
    final int[] f57169i;

    /* renamed from: j */
    final int[] f57170j;

    /* renamed from: k */
    final C16194b f57171k;

    /* renamed from: l */
    final int f57172l;

    /* renamed from: m */
    final int f57173m;

    /* renamed from: n */
    private final C16194b f57174n;

    /* renamed from: o */
    private final int f57175o;

    /* renamed from: a */
    public static final C16193a f57161a = new C16193a(4201, 4096, 1);

    /* renamed from: b */
    public static final C16193a f57162b = new C16193a(1033, 1024, 1);

    /* renamed from: d */
    public static final C16193a f57164d = new C16193a(19, 16, 1);

    /* renamed from: e */
    public static final C16193a f57165e = new C16193a(285, PropertyFlags.INDEX_PARTIAL_SKIP_NULL, 0);

    static {
        C16193a c16193a = new C16193a(67, 64, 1);
        f57163c = c16193a;
        C16193a c16193a2 = new C16193a(VastError.ERROR_CODE_BAD_URI, PropertyFlags.INDEX_PARTIAL_SKIP_NULL, 1);
        f57166f = c16193a2;
        f57167g = c16193a2;
        f57168h = c16193a;
    }

    public C16193a(int i, int i2, int i3) {
        this.f57175o = i;
        this.f57172l = i2;
        this.f57173m = i3;
        this.f57169i = new int[i2];
        this.f57170j = new int[i2];
        int i4 = 1;
        for (int i5 = 0; i5 < i2; i5++) {
            this.f57169i[i5] = i4;
            int i6 = i4 << 1;
            i4 = i6;
            if (i6 >= i2) {
                i4 = (i6 ^ i) & (i2 - 1);
            }
        }
        for (int i7 = 0; i7 < i2 - 1; i7++) {
            this.f57170j[this.f57169i[i7]] = i7;
        }
        this.f57171k = new C16194b(this, new int[]{0});
        this.f57174n = new C16194b(this, new int[]{1});
    }

    /* renamed from: a */
    public static int m7675a(int i, int i2) {
        return i ^ i2;
    }

    /* renamed from: b */
    public final int m7674b(int i, int i2) {
        if (i == 0 || i2 == 0) {
            return 0;
        }
        int[] iArr = this.f57169i;
        int[] iArr2 = this.f57170j;
        return iArr[(iArr2[i] + iArr2[i2]) % (this.f57172l - 1)];
    }

    public final String toString() {
        return "GF(0x" + Integer.toHexString(this.f57175o) + ',' + this.f57172l + ')';
    }
}
