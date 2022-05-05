package org.spongycastle.math.p032ec;

import java.math.BigInteger;
/* renamed from: org.spongycastle.math.ec.ZSignedDigitL2RMultiplier */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/math/ec/ZSignedDigitL2RMultiplier.class */
public class ZSignedDigitL2RMultiplier extends AbstractECMultiplier {
    @Override // org.spongycastle.math.p032ec.AbstractECMultiplier
    protected ECPoint multiplyPositive(ECPoint eCPoint, BigInteger bigInteger) {
        ECPoint normalize = eCPoint.normalize();
        ECPoint eCPoint2 = normalize.negate();
        int bitLength = bigInteger.bitLength();
        int lowestSetBit = bigInteger.getLowestSetBit();
        ECPoint eCPoint3 = normalize;
        while (true) {
            bitLength--;
            if (bitLength <= lowestSetBit) {
                return eCPoint3.timesPow2(lowestSetBit);
            }
            if (bigInteger.testBit(bitLength)) {
                eCPoint2 = normalize;
            }
            eCPoint3 = eCPoint3.twicePlus(eCPoint2);
        }
    }
}
