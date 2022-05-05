package org.spongycastle.math.p032ec;

import java.math.BigInteger;
/* renamed from: org.spongycastle.math.ec.FixedPointCombMultiplier */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/math/ec/FixedPointCombMultiplier.class */
public class FixedPointCombMultiplier extends AbstractECMultiplier {
    protected int getWidthForCombSize(int i) {
        return i > 257 ? 6 : 5;
    }

    @Override // org.spongycastle.math.p032ec.AbstractECMultiplier
    protected ECPoint multiplyPositive(ECPoint eCPoint, BigInteger bigInteger) {
        ECCurve curve = eCPoint.getCurve();
        int combSize = FixedPointUtil.getCombSize(curve);
        if (bigInteger.bitLength() > combSize) {
            throw new IllegalStateException("fixed-point comb doesn't support scalars larger than the curve order");
        }
        FixedPointPreCompInfo precompute = FixedPointUtil.precompute(eCPoint, getWidthForCombSize(combSize));
        ECPoint[] preComp = precompute.getPreComp();
        int width = precompute.getWidth();
        int i = ((combSize + width) - 1) / width;
        ECPoint infinity = curve.getInfinity();
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = 0;
            for (int i4 = ((width * i) - 1) - i2; i4 >= 0; i4 -= i) {
                int i5 = i3 << 1;
                i3 = i5;
                if (bigInteger.testBit(i4)) {
                    i3 = i5 | 1;
                }
            }
            infinity = infinity.twicePlus(preComp[i3]);
        }
        return infinity.add(precompute.getOffset());
    }
}
