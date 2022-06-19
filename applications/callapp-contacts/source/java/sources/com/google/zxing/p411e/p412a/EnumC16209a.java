package com.google.zxing.p411e.p412a;
/* renamed from: com.google.zxing.e.a.a */
/* loaded from: classes4-dex2jar.jar:com/google/zxing/e/a/a.class */
public enum EnumC16209a {
    L(1),
    M(0),
    Q(3),
    H(2);
    
    private static final EnumC16209a[] FOR_BITS;
    private final int bits;

    static {
        EnumC16209a enumC16209a = L;
        EnumC16209a enumC16209a2 = M;
        EnumC16209a enumC16209a3 = Q;
        FOR_BITS = new EnumC16209a[]{enumC16209a2, enumC16209a, H, enumC16209a3};
    }

    EnumC16209a(int i) {
        this.bits = i;
    }

    public static EnumC16209a forBits(int i) {
        if (i >= 0) {
            EnumC16209a[] enumC16209aArr = FOR_BITS;
            if (i < enumC16209aArr.length) {
                return enumC16209aArr[i];
            }
        }
        throw new IllegalArgumentException();
    }

    public final int getBits() {
        return this.bits;
    }
}
