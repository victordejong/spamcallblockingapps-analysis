package org.spongycastle.math.p032ec;

import java.math.BigInteger;
/* renamed from: org.spongycastle.math.ec.WNafL2RMultiplier */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/math/ec/WNafL2RMultiplier.class */
public class WNafL2RMultiplier extends AbstractECMultiplier {
    protected int getWindowSize(int i) {
        return WNafUtil.getWindowSize(i);
    }

    @Override // org.spongycastle.math.p032ec.AbstractECMultiplier
    protected ECPoint multiplyPositive(ECPoint eCPoint, BigInteger bigInteger) {
        ECPoint eCPoint2;
        int max = Math.max(2, Math.min(16, getWindowSize(bigInteger.bitLength())));
        WNafPreCompInfo precompute = WNafUtil.precompute(eCPoint, max, true);
        ECPoint[] preComp = precompute.getPreComp();
        ECPoint[] preCompNeg = precompute.getPreCompNeg();
        int[] generateCompactWindowNaf = WNafUtil.generateCompactWindowNaf(max, bigInteger);
        ECPoint infinity = eCPoint.getCurve().getInfinity();
        int length = generateCompactWindowNaf.length;
        int i = length;
        if (length > 1) {
            int i2 = length - 1;
            int i3 = generateCompactWindowNaf[i2];
            int i4 = i3 >> 16;
            int i5 = i3 & 65535;
            int abs = Math.abs(i4);
            ECPoint[] eCPointArr = i4 < 0 ? preCompNeg : preComp;
            if ((abs << 2) < (1 << max)) {
                byte b = LongArray.bitLengths[abs];
                int i6 = max - b;
                eCPoint2 = eCPointArr[((1 << (max - 1)) - 1) >>> 1].add(eCPointArr[(((abs ^ (1 << (b - 1))) << i6) + 1) >>> 1]);
                i5 -= i6;
            } else {
                eCPoint2 = eCPointArr[abs >>> 1];
            }
            infinity = eCPoint2.timesPow2(i5);
            i = i2;
        }
        while (i > 0) {
            i--;
            int i7 = generateCompactWindowNaf[i];
            int i8 = i7 >> 16;
            infinity = infinity.twicePlus((i8 < 0 ? preCompNeg : preComp)[Math.abs(i8) >>> 1]).timesPow2(i7 & 65535);
        }
        return infinity;
    }
}
