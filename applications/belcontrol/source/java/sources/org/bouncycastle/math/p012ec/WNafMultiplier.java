package org.bouncycastle.math.p012ec;

import java.math.BigInteger;
/* renamed from: org.bouncycastle.math.ec.WNafMultiplier */
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/math/ec/WNafMultiplier.class */
public class WNafMultiplier implements ECMultiplier {
    @Override // org.bouncycastle.math.p012ec.ECMultiplier
    public ECPoint multiply(ECPoint eCPoint, BigInteger bigInteger, PreCompInfo preCompInfo) {
        byte b;
        int i;
        WNafPreCompInfo wNafPreCompInfo = (preCompInfo == null || !(preCompInfo instanceof WNafPreCompInfo)) ? new WNafPreCompInfo() : (WNafPreCompInfo) preCompInfo;
        int bitLength = bigInteger.bitLength();
        int i2 = 8;
        if (bitLength < 13) {
            i2 = 1;
            b = 2;
        } else if (bitLength < 41) {
            i2 = 2;
            b = 3;
        } else if (bitLength < 121) {
            i2 = 4;
            b = 4;
        } else if (bitLength < 337) {
            b = 5;
        } else if (bitLength < 897) {
            i2 = 16;
            b = 6;
        } else if (bitLength < 2305) {
            i2 = 32;
            b = 7;
        } else {
            i2 = 127;
            b = 8;
        }
        ECPoint[] preComp = wNafPreCompInfo.getPreComp();
        ECPoint twiceP = wNafPreCompInfo.getTwiceP();
        if (preComp == null) {
            preComp = new ECPoint[]{eCPoint};
            i = 1;
        } else {
            i = preComp.length;
        }
        ECPoint eCPoint2 = twiceP;
        if (twiceP == null) {
            eCPoint2 = eCPoint.twice();
        }
        ECPoint[] eCPointArr = preComp;
        if (i < i2) {
            eCPointArr = new ECPoint[i2];
            System.arraycopy(preComp, 0, eCPointArr, 0, i);
            while (i < i2) {
                eCPointArr[i] = eCPoint2.add(eCPointArr[i - 1]);
                i++;
            }
        }
        byte[] windowNaf = windowNaf(b, bigInteger);
        int length = windowNaf.length;
        ECPoint infinity = eCPoint.getCurve().getInfinity();
        while (true) {
            length--;
            if (length < 0) {
                wNafPreCompInfo.setPreComp(eCPointArr);
                wNafPreCompInfo.setTwiceP(eCPoint2);
                eCPoint.setPreCompInfo(wNafPreCompInfo);
                return infinity;
            }
            ECPoint twice = infinity.twice();
            infinity = twice;
            if (windowNaf[length] != 0) {
                infinity = windowNaf[length] > 0 ? twice.add(eCPointArr[(windowNaf[length] - 1) / 2]) : twice.subtract(eCPointArr[((-windowNaf[length]) - 1) / 2]);
            }
        }
    }

    public byte[] windowNaf(byte b, BigInteger bigInteger) {
        short s;
        byte[] bArr = new byte[bigInteger.bitLength() + 1];
        BigInteger valueOf = BigInteger.valueOf((short) (1 << b));
        int i = 0;
        int i2 = 0;
        while (bigInteger.signum() > 0) {
            if (bigInteger.testBit(0)) {
                BigInteger mod = bigInteger.mod(valueOf);
                boolean testBit = mod.testBit(b - 1);
                int intValue = mod.intValue();
                if (testBit) {
                    bArr[i2] = (byte) (intValue - s);
                } else {
                    bArr[i2] = (byte) intValue;
                }
                bigInteger = bigInteger.subtract(BigInteger.valueOf(bArr[i2]));
                i = i2;
            } else {
                bArr[i2] = (byte) 0;
            }
            bigInteger = bigInteger.shiftRight(1);
            i2++;
        }
        int i3 = i + 1;
        byte[] bArr2 = new byte[i3];
        System.arraycopy(bArr, 0, bArr2, 0, i3);
        return bArr2;
    }
}
