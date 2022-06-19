package org.bouncycastle.math.p012ec;

import java.math.BigInteger;
/* renamed from: org.bouncycastle.math.ec.ReferenceMultiplier */
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/math/ec/ReferenceMultiplier.class */
public class ReferenceMultiplier implements ECMultiplier {
    @Override // org.bouncycastle.math.p012ec.ECMultiplier
    public ECPoint multiply(ECPoint eCPoint, BigInteger bigInteger, PreCompInfo preCompInfo) {
        ECPoint infinity = eCPoint.getCurve().getInfinity();
        int bitLength = bigInteger.bitLength();
        int i = 0;
        while (i < bitLength) {
            ECPoint eCPoint2 = infinity;
            if (bigInteger.testBit(i)) {
                eCPoint2 = infinity.add(eCPoint);
            }
            eCPoint = eCPoint.twice();
            i++;
            infinity = eCPoint2;
        }
        return infinity;
    }
}
