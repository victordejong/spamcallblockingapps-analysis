package org.spongycastle.math.p032ec;

import java.math.BigInteger;
/* renamed from: org.spongycastle.math.ec.NafL2RMultiplier */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/math/ec/NafL2RMultiplier.class */
public class NafL2RMultiplier extends AbstractECMultiplier {
    @Override // org.spongycastle.math.p032ec.AbstractECMultiplier
    protected ECPoint multiplyPositive(ECPoint eCPoint, BigInteger bigInteger) {
        int[] generateCompactNaf = WNafUtil.generateCompactNaf(bigInteger);
        ECPoint normalize = eCPoint.normalize();
        ECPoint eCPoint2 = normalize.negate();
        ECPoint infinity = eCPoint.getCurve().getInfinity();
        int length = generateCompactNaf.length;
        while (true) {
            length--;
            if (length < 0) {
                return infinity;
            }
            int i = generateCompactNaf[length];
            if ((i >> 16) >= 0) {
                eCPoint2 = normalize;
            }
            infinity = infinity.twicePlus(eCPoint2).timesPow2(i & 65535);
        }
    }
}
