package org.spongycastle.pqc.math.ntru.euclid;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/math/ntru/euclid/IntEuclidean.class */
public class IntEuclidean {
    public int gcd;

    /* renamed from: x */
    public int f1808x;

    /* renamed from: y */
    public int f1809y;

    private IntEuclidean() {
    }

    public static IntEuclidean calculate(int i, int i2) {
        int i3 = 0;
        int i4 = 1;
        int i5 = 1;
        int i6 = 0;
        int i7 = i;
        int i8 = i2;
        while (i8 != 0) {
            int i9 = i7 / i8;
            i7 = i8;
            i8 = i7 % i8;
            i4 = i3;
            i3 = i4 - (i9 * i3);
            i6 = i5;
            i5 = i6 - (i9 * i5);
        }
        IntEuclidean intEuclidean = new IntEuclidean();
        intEuclidean.f1808x = i4;
        intEuclidean.f1809y = i6;
        intEuclidean.gcd = i7;
        return intEuclidean;
    }
}
