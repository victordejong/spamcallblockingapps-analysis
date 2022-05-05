package org.spongycastle.math.p032ec;

import java.math.BigInteger;
import org.spongycastle.math.p032ec.endo.GLVEndomorphism;
/* renamed from: org.spongycastle.math.ec.GLVMultiplier */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/math/ec/GLVMultiplier.class */
public class GLVMultiplier extends AbstractECMultiplier {
    protected final ECCurve curve;
    protected final GLVEndomorphism glvEndomorphism;

    public GLVMultiplier(ECCurve eCCurve, GLVEndomorphism gLVEndomorphism) {
        if (eCCurve == null || eCCurve.getOrder() == null) {
            throw new IllegalArgumentException("Need curve with known group order");
        }
        this.curve = eCCurve;
        this.glvEndomorphism = gLVEndomorphism;
    }

    @Override // org.spongycastle.math.p032ec.AbstractECMultiplier
    protected ECPoint multiplyPositive(ECPoint eCPoint, BigInteger bigInteger) {
        if (!this.curve.equals(eCPoint.getCurve())) {
            throw new IllegalStateException();
        }
        BigInteger[] decomposeScalar = this.glvEndomorphism.decomposeScalar(bigInteger.mod(eCPoint.getCurve().getOrder()));
        BigInteger bigInteger2 = decomposeScalar[0];
        BigInteger bigInteger3 = decomposeScalar[1];
        ECPointMap pointMap = this.glvEndomorphism.getPointMap();
        return this.glvEndomorphism.hasEfficientPointMap() ? ECAlgorithms.implShamirsTrickWNaf(eCPoint, bigInteger2, pointMap, bigInteger3) : ECAlgorithms.implShamirsTrickWNaf(eCPoint, bigInteger2, pointMap.map(eCPoint), bigInteger3);
    }
}
