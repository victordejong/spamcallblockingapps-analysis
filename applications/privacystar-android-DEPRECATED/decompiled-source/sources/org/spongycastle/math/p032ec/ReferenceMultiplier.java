package org.spongycastle.math.p032ec;

import java.math.BigInteger;
/* renamed from: org.spongycastle.math.ec.ReferenceMultiplier */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/math/ec/ReferenceMultiplier.class */
public class ReferenceMultiplier extends AbstractECMultiplier {
    @Override // org.spongycastle.math.p032ec.AbstractECMultiplier
    protected ECPoint multiplyPositive(ECPoint eCPoint, BigInteger bigInteger) {
        return ECAlgorithms.referenceMultiply(eCPoint, bigInteger);
    }
}
