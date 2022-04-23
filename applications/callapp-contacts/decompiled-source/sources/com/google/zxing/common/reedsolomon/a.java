package com.google.zxing.common.reedsolomon;

import com.explorestack.iab.vast.VastError;
import io.objectbox.model.PropertyFlags;
/* loaded from: classes4-dex2jar.jar:com/google/zxing/common/reedsolomon/a.class */
public final class a {

    /* renamed from: c  reason: collision with root package name */
    public static final a f32986c;
    public static final a f;
    public static final a g;
    public static final a h;
    final int[] i;
    final int[] j;
    final b k;
    final int l;
    final int m;
    private final b n;
    private final int o;

    /* renamed from: a  reason: collision with root package name */
    public static final a f32984a = new a(4201, 4096, 1);

    /* renamed from: b  reason: collision with root package name */
    public static final a f32985b = new a(1033, 1024, 1);

    /* renamed from: d  reason: collision with root package name */
    public static final a f32987d = new a(19, 16, 1);
    public static final a e = new a(285, PropertyFlags.INDEX_PARTIAL_SKIP_NULL, 0);

    static {
        a aVar = new a(67, 64, 1);
        f32986c = aVar;
        a aVar2 = new a(VastError.ERROR_CODE_BAD_URI, PropertyFlags.INDEX_PARTIAL_SKIP_NULL, 1);
        f = aVar2;
        g = aVar2;
        h = aVar;
    }

    public a(int i, int i2, int i3) {
        this.o = i;
        this.l = i2;
        this.m = i3;
        this.i = new int[i2];
        this.j = new int[i2];
        int i4 = 1;
        for (int i5 = 0; i5 < i2; i5++) {
            this.i[i5] = i4;
            int i6 = i4 << 1;
            i4 = i6;
            if (i6 >= i2) {
                i4 = (i6 ^ i) & (i2 - 1);
            }
        }
        for (int i7 = 0; i7 < i2 - 1; i7++) {
            this.j[this.i[i7]] = i7;
        }
        this.k = new b(this, new int[]{0});
        this.n = new b(this, new int[]{1});
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i, int i2) {
        return i ^ i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int b(int i, int i2) {
        if (i == 0 || i2 == 0) {
            return 0;
        }
        int[] iArr = this.i;
        int[] iArr2 = this.j;
        return iArr[(iArr2[i] + iArr2[i2]) % (this.l - 1)];
    }

    public final String toString() {
        return "GF(0x" + Integer.toHexString(this.o) + ',' + this.l + ')';
    }
}
