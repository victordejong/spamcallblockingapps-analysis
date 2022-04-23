package org.spongycastle.math.p032ec;

import java.math.BigInteger;
/* renamed from: org.spongycastle.math.ec.DoubleAddMultiplier */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/math/ec/DoubleAddMultiplier.class */
public class DoubleAddMultiplier extends AbstractECMultiplier {
    @Override // org.spongycastle.math.p032ec.AbstractECMultiplier
    protected ECPoint multiplyPositive(ECPoint eCPoint, BigInteger bigInteger) {
        ECPoint[] eCPointArr = new ECPoint[2];
        eCPointArr[0] = eCPoint.getCurve().getInfinity();
        eCPointArr[1] = eCPoint;
        int bitLength = bigInteger.bitLength();
        for (int i = 0; i < bitLength; i++) {
            boolean testBit = bigInteger.testBit(i);
            int i2 = 1 - (testBit ? 1 : 0);
            eCPointArr[i2] = eCPointArr[i2].twicePlus(eCPointArr[testBit ? 1 : 0]);
        }
        return eCPointArr[0];
    }
}
