package org.bouncycastle.math.p012ec;

import java.math.BigInteger;
import org.bouncycastle.math.p012ec.ECCurve;
/* renamed from: org.bouncycastle.math.ec.ECAlgorithms */
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/math/ec/ECAlgorithms.class */
public class ECAlgorithms {
    private static ECPoint implShamirsTrick(ECPoint eCPoint, BigInteger bigInteger, ECPoint eCPoint2, BigInteger bigInteger2) {
        int max = Math.max(bigInteger.bitLength(), bigInteger2.bitLength());
        ECPoint add = eCPoint.add(eCPoint2);
        ECPoint infinity = eCPoint.getCurve().getInfinity();
        while (true) {
            max--;
            if (max >= 0) {
                ECPoint twice = infinity.twice();
                if (bigInteger.testBit(max)) {
                    infinity = bigInteger2.testBit(max) ? twice.add(add) : twice.add(eCPoint);
                } else {
                    infinity = twice;
                    if (bigInteger2.testBit(max)) {
                        infinity = twice.add(eCPoint2);
                    }
                }
            } else {
                return infinity;
            }
        }
    }

    public static ECPoint shamirsTrick(ECPoint eCPoint, BigInteger bigInteger, ECPoint eCPoint2, BigInteger bigInteger2) {
        if (eCPoint.getCurve().equals(eCPoint2.getCurve())) {
            return implShamirsTrick(eCPoint, bigInteger, eCPoint2, bigInteger2);
        }
        throw new IllegalArgumentException("P and Q must be on same curve");
    }

    public static ECPoint sumOfTwoMultiplies(ECPoint eCPoint, BigInteger bigInteger, ECPoint eCPoint2, BigInteger bigInteger2) {
        ECCurve curve = eCPoint.getCurve();
        if (curve.equals(eCPoint2.getCurve())) {
            return (!(curve instanceof ECCurve.F2m) || !((ECCurve.F2m) curve).isKoblitz()) ? implShamirsTrick(eCPoint, bigInteger, eCPoint2, bigInteger2) : eCPoint.multiply(bigInteger).add(eCPoint2.multiply(bigInteger2));
        }
        throw new IllegalArgumentException("P and Q must be on same curve");
    }
}
