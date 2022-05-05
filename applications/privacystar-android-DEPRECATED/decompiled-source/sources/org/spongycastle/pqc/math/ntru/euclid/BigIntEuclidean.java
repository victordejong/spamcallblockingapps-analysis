package org.spongycastle.pqc.math.ntru.euclid;

import java.math.BigInteger;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/math/ntru/euclid/BigIntEuclidean.class */
public class BigIntEuclidean {
    public BigInteger gcd;

    /* renamed from: x */
    public BigInteger f1806x;

    /* renamed from: y */
    public BigInteger f1807y;

    private BigIntEuclidean() {
    }

    public static BigIntEuclidean calculate(BigInteger bigInteger, BigInteger bigInteger2) {
        BigInteger bigInteger3 = BigInteger.ZERO;
        bigInteger3 = BigInteger.ONE;
        r4 = BigInteger.ONE;
        BigInteger bigInteger4 = BigInteger.ZERO;
        BigInteger bigInteger5 = bigInteger;
        while (!bigInteger2.equals(BigInteger.ZERO)) {
            BigInteger[] divideAndRemainder = bigInteger5.divideAndRemainder(bigInteger2);
            BigInteger bigInteger6 = divideAndRemainder[0];
            bigInteger2 = divideAndRemainder[1];
            bigInteger3 = bigInteger3.subtract(bigInteger6.multiply(bigInteger3));
            bigInteger4 = bigInteger4.subtract(bigInteger6.multiply(bigInteger4));
            bigInteger5 = bigInteger2;
        }
        BigIntEuclidean bigIntEuclidean = new BigIntEuclidean();
        bigIntEuclidean.f1806x = bigInteger3;
        bigIntEuclidean.f1807y = bigInteger4;
        bigIntEuclidean.gcd = bigInteger5;
        return bigIntEuclidean;
    }
}
