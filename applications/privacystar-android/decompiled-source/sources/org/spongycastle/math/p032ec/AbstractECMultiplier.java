package org.spongycastle.math.p032ec;

import java.math.BigInteger;
/* renamed from: org.spongycastle.math.ec.AbstractECMultiplier */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/math/ec/AbstractECMultiplier.class */
public abstract class AbstractECMultiplier implements ECMultiplier {
    @Override // org.spongycastle.math.p032ec.ECMultiplier
    public ECPoint multiply(ECPoint eCPoint, BigInteger bigInteger) {
        int signum = bigInteger.signum();
        if (signum == 0 || eCPoint.isInfinity()) {
            return eCPoint.getCurve().getInfinity();
        }
        ECPoint multiplyPositive = multiplyPositive(eCPoint, bigInteger.abs());
        if (signum <= 0) {
            multiplyPositive = multiplyPositive.negate();
        }
        return ECAlgorithms.validatePoint(multiplyPositive);
    }

    protected abstract ECPoint multiplyPositive(ECPoint eCPoint, BigInteger bigInteger);
}
