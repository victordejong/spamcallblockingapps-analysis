package org.spongycastle.math.p032ec;

import java.math.BigInteger;
/* renamed from: org.spongycastle.math.ec.MixedNafR2LMultiplier */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/math/ec/MixedNafR2LMultiplier.class */
public class MixedNafR2LMultiplier extends AbstractECMultiplier {
    protected int additionCoord;
    protected int doublingCoord;

    public MixedNafR2LMultiplier() {
        this(2, 4);
    }

    public MixedNafR2LMultiplier(int i, int i2) {
        this.additionCoord = i;
        this.doublingCoord = i2;
    }

    protected ECCurve configureCurve(ECCurve eCCurve, int i) {
        if (eCCurve.getCoordinateSystem() == i) {
            return eCCurve;
        }
        if (eCCurve.supportsCoordinateSystem(i)) {
            return eCCurve.configure().setCoordinateSystem(i).create();
        }
        throw new IllegalArgumentException("Coordinate system " + i + " not supported by this curve");
    }

    @Override // org.spongycastle.math.p032ec.AbstractECMultiplier
    protected ECPoint multiplyPositive(ECPoint eCPoint, BigInteger bigInteger) {
        ECCurve curve = eCPoint.getCurve();
        ECCurve configureCurve = configureCurve(curve, this.additionCoord);
        ECCurve configureCurve2 = configureCurve(curve, this.doublingCoord);
        int[] generateCompactNaf = WNafUtil.generateCompactNaf(bigInteger);
        ECPoint infinity = configureCurve.getInfinity();
        ECPoint importPoint = configureCurve2.importPoint(eCPoint);
        int i = 0;
        int i2 = 0;
        while (i < generateCompactNaf.length) {
            int i3 = generateCompactNaf[i];
            ECPoint timesPow2 = importPoint.timesPow2(i2 + (i3 & 65535));
            ECPoint importPoint2 = configureCurve.importPoint(timesPow2);
            ECPoint eCPoint2 = importPoint2;
            if ((i3 >> 16) < 0) {
                eCPoint2 = importPoint2.negate();
            }
            infinity = infinity.add(eCPoint2);
            i++;
            i2 = 1;
            importPoint = timesPow2;
        }
        return curve.importPoint(infinity);
    }
}
