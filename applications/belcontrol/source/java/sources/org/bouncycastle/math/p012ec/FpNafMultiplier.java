package org.bouncycastle.math.p012ec;

import java.math.BigInteger;
/* renamed from: org.bouncycastle.math.ec.FpNafMultiplier */
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/math/ec/FpNafMultiplier.class */
public class FpNafMultiplier implements ECMultiplier {
    @Override // org.bouncycastle.math.p012ec.ECMultiplier
    public ECPoint multiply(ECPoint eCPoint, BigInteger bigInteger, PreCompInfo preCompInfo) {
        BigInteger multiply = bigInteger.multiply(BigInteger.valueOf(3L));
        ECPoint negate = eCPoint.negate();
        ECPoint eCPoint2 = eCPoint;
        for (int bitLength = multiply.bitLength() - 2; bitLength > 0; bitLength--) {
            ECPoint twice = eCPoint2.twice();
            boolean testBit = multiply.testBit(bitLength);
            eCPoint2 = twice;
            if (testBit != bigInteger.testBit(bitLength)) {
                eCPoint2 = twice.add(testBit ? eCPoint : negate);
            }
        }
        return eCPoint2;
    }
}
