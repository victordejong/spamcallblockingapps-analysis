package org.spongycastle.math.p032ec;

import java.math.BigInteger;
/* renamed from: org.spongycastle.math.ec.ZSignedDigitR2LMultiplier */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/math/ec/ZSignedDigitR2LMultiplier.class */
public class ZSignedDigitR2LMultiplier extends AbstractECMultiplier {
    @Override // org.spongycastle.math.p032ec.AbstractECMultiplier
    protected ECPoint multiplyPositive(ECPoint eCPoint, BigInteger bigInteger) {
        ECPoint infinity = eCPoint.getCurve().getInfinity();
        int bitLength = bigInteger.bitLength();
        int lowestSetBit = bigInteger.getLowestSetBit();
        ECPoint timesPow2 = eCPoint.timesPow2(lowestSetBit);
        while (true) {
            lowestSetBit++;
            if (lowestSetBit >= bitLength) {
                return infinity.add(timesPow2);
            }
            infinity = infinity.add(bigInteger.testBit(lowestSetBit) ? timesPow2 : timesPow2.negate());
            timesPow2 = timesPow2.twice();
        }
    }
}
