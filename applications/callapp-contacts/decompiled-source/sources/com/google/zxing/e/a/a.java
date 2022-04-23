package com.google.zxing.e.a;
/* loaded from: classes4-dex2jar.jar:com/google/zxing/e/a/a.class */
public enum a {
    L(1),
    M(0),
    Q(3),
    H(2);
    
    private static final a[] FOR_BITS;
    private final int bits;

    static {
        a aVar = L;
        a aVar2 = M;
        a aVar3 = Q;
        FOR_BITS = new a[]{aVar2, aVar, H, aVar3};
    }

    a(int i) {
        this.bits = i;
    }

    public static a forBits(int i) {
        if (i >= 0) {
            a[] aVarArr = FOR_BITS;
            if (i < aVarArr.length) {
                return aVarArr[i];
            }
        }
        throw new IllegalArgumentException();
    }

    public final int getBits() {
        return this.bits;
    }
}
