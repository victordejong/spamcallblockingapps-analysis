package org.spongycastle.math.p032ec;

import java.math.BigInteger;
import org.spongycastle.math.field.FiniteField;
import org.spongycastle.math.field.PolynomialExtensionField;
import org.spongycastle.math.p032ec.ECCurve;
import org.spongycastle.math.p032ec.endo.ECEndomorphism;
import org.spongycastle.math.p032ec.endo.GLVEndomorphism;
/* renamed from: org.spongycastle.math.ec.ECAlgorithms */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/math/ec/ECAlgorithms.class */
public class ECAlgorithms {
    static ECPoint implShamirsTrickJsf(ECPoint eCPoint, BigInteger bigInteger, ECPoint eCPoint2, BigInteger bigInteger2) {
        ECCurve curve = eCPoint.getCurve();
        ECPoint infinity = curve.getInfinity();
        ECPoint[] eCPointArr = {eCPoint2, eCPoint.subtract(eCPoint2), eCPoint, eCPoint.add(eCPoint2)};
        curve.normalizeAll(eCPointArr);
        ECPoint negate = eCPointArr[3].negate();
        ECPoint negate2 = eCPointArr[2].negate();
        ECPoint negate3 = eCPointArr[1].negate();
        ECPoint negate4 = eCPointArr[0].negate();
        ECPoint eCPoint3 = eCPointArr[0];
        ECPoint eCPoint4 = eCPointArr[1];
        ECPoint eCPoint5 = eCPointArr[2];
        ECPoint eCPoint6 = eCPointArr[3];
        byte[] generateJSF = WNafUtil.generateJSF(bigInteger, bigInteger2);
        int length = generateJSF.length;
        ECPoint eCPoint7 = infinity;
        while (true) {
            length--;
            if (length < 0) {
                return eCPoint7;
            }
            byte b = generateJSF[length];
            eCPoint7 = eCPoint7.twicePlus(new ECPoint[]{negate, negate2, negate3, negate4, infinity, eCPoint3, eCPoint4, eCPoint5, eCPoint6}[(((b << 24) >> 28) * 3) + 4 + ((b << 28) >> 28)]);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ECPoint implShamirsTrickWNaf(ECPoint eCPoint, BigInteger bigInteger, ECPoint eCPoint2, BigInteger bigInteger2) {
        boolean z = false;
        boolean z2 = bigInteger.signum() < 0;
        if (bigInteger2.signum() < 0) {
            z = true;
        }
        BigInteger abs = bigInteger.abs();
        BigInteger abs2 = bigInteger2.abs();
        int max = Math.max(2, Math.min(16, WNafUtil.getWindowSize(abs.bitLength())));
        int max2 = Math.max(2, Math.min(16, WNafUtil.getWindowSize(abs2.bitLength())));
        WNafPreCompInfo precompute = WNafUtil.precompute(eCPoint, max, true);
        WNafPreCompInfo precompute2 = WNafUtil.precompute(eCPoint2, max2, true);
        return implShamirsTrickWNaf(z2 ? precompute.getPreCompNeg() : precompute.getPreComp(), z2 ? precompute.getPreComp() : precompute.getPreCompNeg(), WNafUtil.generateWindowNaf(max, abs), z ? precompute2.getPreCompNeg() : precompute2.getPreComp(), z ? precompute2.getPreComp() : precompute2.getPreCompNeg(), WNafUtil.generateWindowNaf(max2, abs2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ECPoint implShamirsTrickWNaf(ECPoint eCPoint, BigInteger bigInteger, ECPointMap eCPointMap, BigInteger bigInteger2) {
        boolean z = false;
        boolean z2 = bigInteger.signum() < 0;
        if (bigInteger2.signum() < 0) {
            z = true;
        }
        BigInteger abs = bigInteger.abs();
        BigInteger abs2 = bigInteger2.abs();
        int max = Math.max(2, Math.min(16, WNafUtil.getWindowSize(Math.max(abs.bitLength(), abs2.bitLength()))));
        ECPoint mapPointWithPrecomp = WNafUtil.mapPointWithPrecomp(eCPoint, max, true, eCPointMap);
        WNafPreCompInfo wNafPreCompInfo = WNafUtil.getWNafPreCompInfo(eCPoint);
        WNafPreCompInfo wNafPreCompInfo2 = WNafUtil.getWNafPreCompInfo(mapPointWithPrecomp);
        return implShamirsTrickWNaf(z2 ? wNafPreCompInfo.getPreCompNeg() : wNafPreCompInfo.getPreComp(), z2 ? wNafPreCompInfo.getPreComp() : wNafPreCompInfo.getPreCompNeg(), WNafUtil.generateWindowNaf(max, abs), z ? wNafPreCompInfo2.getPreCompNeg() : wNafPreCompInfo2.getPreComp(), z ? wNafPreCompInfo2.getPreComp() : wNafPreCompInfo2.getPreCompNeg(), WNafUtil.generateWindowNaf(max, abs2));
    }

    private static ECPoint implShamirsTrickWNaf(ECPoint[] eCPointArr, ECPoint[] eCPointArr2, byte[] bArr, ECPoint[] eCPointArr3, ECPoint[] eCPointArr4, byte[] bArr2) {
        ECPoint eCPoint;
        int max = Math.max(bArr.length, bArr2.length);
        ECPoint infinity = eCPointArr[0].getCurve().getInfinity();
        int i = max - 1;
        ECPoint eCPoint2 = infinity;
        int i2 = 0;
        while (i >= 0) {
            byte b = i < bArr.length ? bArr[i] : (byte) 0;
            byte b2 = i < bArr2.length ? bArr2[i] : (byte) 0;
            if ((b | b2) == 0) {
                i2++;
            } else {
                if (b != 0) {
                    eCPoint = infinity.add((b < 0 ? eCPointArr2 : eCPointArr)[Math.abs((int) b) >>> 1]);
                } else {
                    eCPoint = infinity;
                }
                ECPoint eCPoint3 = eCPoint;
                if (b2 != 0) {
                    eCPoint3 = eCPoint.add((b2 < 0 ? eCPointArr4 : eCPointArr3)[Math.abs((int) b2) >>> 1]);
                }
                i2 = i2;
                ECPoint eCPoint4 = eCPoint2;
                if (i2 > 0) {
                    eCPoint4 = eCPoint2.timesPow2(i2);
                    i2 = 0;
                }
                eCPoint2 = eCPoint4.twicePlus(eCPoint3);
            }
            i--;
        }
        ECPoint eCPoint5 = eCPoint2;
        if (i2 > 0) {
            eCPoint5 = eCPoint2.timesPow2(i2);
        }
        return eCPoint5;
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [byte[], byte[][]] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static org.spongycastle.math.p032ec.ECPoint implSumOfMultiplies(org.spongycastle.math.p032ec.ECPoint[] r5, org.spongycastle.math.p032ec.ECPointMap r6, java.math.BigInteger[] r7) {
        /*
            Method dump skipped, instructions count: 227
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.math.p032ec.ECAlgorithms.implSumOfMultiplies(org.spongycastle.math.ec.ECPoint[], org.spongycastle.math.ec.ECPointMap, java.math.BigInteger[]):org.spongycastle.math.ec.ECPoint");
    }

    /* JADX WARN: Type inference failed for: r0v7, types: [byte[], byte[][]] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static org.spongycastle.math.p032ec.ECPoint implSumOfMultiplies(org.spongycastle.math.p032ec.ECPoint[] r6, java.math.BigInteger[] r7) {
        /*
            r0 = r6
            int r0 = r0.length
            r8 = r0
            r0 = r8
            boolean[] r0 = new boolean[r0]
            r9 = r0
            r0 = r8
            org.spongycastle.math.ec.WNafPreCompInfo[] r0 = new org.spongycastle.math.p032ec.WNafPreCompInfo[r0]
            r10 = r0
            r0 = r8
            byte[] r0 = new byte[r0]
            r11 = r0
            r0 = 0
            r12 = r0
        L_0x0016:
            r0 = r12
            r1 = r8
            if (r0 >= r1) goto L_0x0074
            r0 = r7
            r1 = r12
            r0 = r0[r1]
            r13 = r0
            r0 = r13
            int r0 = r0.signum()
            if (r0 >= 0) goto L_0x0030
            r0 = 1
            r14 = r0
            goto L_0x0033
        L_0x0030:
            r0 = 0
            r14 = r0
        L_0x0033:
            r0 = r9
            r1 = r12
            r2 = r14
            r0[r1] = r2
            r0 = r13
            java.math.BigInteger r0 = r0.abs()
            r13 = r0
            r0 = 2
            r1 = 16
            r2 = r13
            int r2 = r2.bitLength()
            int r2 = org.spongycastle.math.p032ec.WNafUtil.getWindowSize(r2)
            int r1 = java.lang.Math.min(r1, r2)
            int r0 = java.lang.Math.max(r0, r1)
            r15 = r0
            r0 = r10
            r1 = r12
            r2 = r6
            r3 = r12
            r2 = r2[r3]
            r3 = r15
            r4 = 1
            org.spongycastle.math.ec.WNafPreCompInfo r2 = org.spongycastle.math.p032ec.WNafUtil.precompute(r2, r3, r4)
            r0[r1] = r2
            r0 = r11
            r1 = r12
            r2 = r15
            r3 = r13
            byte[] r2 = org.spongycastle.math.p032ec.WNafUtil.generateWindowNaf(r2, r3)
            r0[r1] = r2
            int r12 = r12 + 1
            goto L_0x0016
        L_0x0074:
            r0 = r9
            r1 = r10
            r2 = r11
            org.spongycastle.math.ec.ECPoint r0 = implSumOfMultiplies(r0, r1, r2)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.math.p032ec.ECAlgorithms.implSumOfMultiplies(org.spongycastle.math.ec.ECPoint[], java.math.BigInteger[]):org.spongycastle.math.ec.ECPoint");
    }

    private static ECPoint implSumOfMultiplies(boolean[] zArr, WNafPreCompInfo[] wNafPreCompInfoArr, byte[][] bArr) {
        int length = bArr.length;
        int i = 0;
        for (byte[] bArr2 : bArr) {
            i = Math.max(i, bArr2.length);
        }
        ECPoint infinity = wNafPreCompInfoArr[0].getPreComp()[0].getCurve().getInfinity();
        int i2 = i - 1;
        ECPoint eCPoint = infinity;
        int i3 = 0;
        while (i2 >= 0) {
            ECPoint eCPoint2 = infinity;
            for (int i4 = 0; i4 < length; i4++) {
                byte[] bArr3 = bArr[i4];
                byte b = i2 < bArr3.length ? bArr3[i2] : (byte) 0;
                eCPoint2 = eCPoint2;
                if (b != 0) {
                    int abs = Math.abs((int) b);
                    WNafPreCompInfo wNafPreCompInfo = wNafPreCompInfoArr[i4];
                    eCPoint2 = eCPoint2.add(((b < 0) == zArr[i4] ? wNafPreCompInfo.getPreComp() : wNafPreCompInfo.getPreCompNeg())[abs >>> 1]);
                }
            }
            if (eCPoint2 == infinity) {
                i3++;
            } else {
                i3 = i3;
                ECPoint eCPoint3 = eCPoint;
                if (i3 > 0) {
                    eCPoint3 = eCPoint.timesPow2(i3);
                    i3 = 0;
                }
                eCPoint = eCPoint3.twicePlus(eCPoint2);
            }
            i2--;
        }
        ECPoint eCPoint4 = eCPoint;
        if (i3 > 0) {
            eCPoint4 = eCPoint.timesPow2(i3);
        }
        return eCPoint4;
    }

    static ECPoint implSumOfMultipliesGLV(ECPoint[] eCPointArr, BigInteger[] bigIntegerArr, GLVEndomorphism gLVEndomorphism) {
        BigInteger order = eCPointArr[0].getCurve().getOrder();
        int length = eCPointArr.length;
        int i = length << 1;
        BigInteger[] bigIntegerArr2 = new BigInteger[i];
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3++) {
            BigInteger[] decomposeScalar = gLVEndomorphism.decomposeScalar(bigIntegerArr[i3].mod(order));
            int i4 = i2 + 1;
            bigIntegerArr2[i2] = decomposeScalar[0];
            i2 = i4 + 1;
            bigIntegerArr2[i4] = decomposeScalar[1];
        }
        ECPointMap pointMap = gLVEndomorphism.getPointMap();
        if (gLVEndomorphism.hasEfficientPointMap()) {
            return implSumOfMultiplies(eCPointArr, pointMap, bigIntegerArr2);
        }
        ECPoint[] eCPointArr2 = new ECPoint[i];
        int i5 = 0;
        for (ECPoint eCPoint : eCPointArr) {
            ECPoint map = pointMap.map(eCPoint);
            int i6 = i5 + 1;
            eCPointArr2[i5] = eCPoint;
            i5 = i6 + 1;
            eCPointArr2[i6] = map;
        }
        return implSumOfMultiplies(eCPointArr2, bigIntegerArr2);
    }

    public static ECPoint importPoint(ECCurve eCCurve, ECPoint eCPoint) {
        if (eCCurve.equals(eCPoint.getCurve())) {
            return eCCurve.importPoint(eCPoint);
        }
        throw new IllegalArgumentException("Point must be on the same curve");
    }

    public static boolean isF2mCurve(ECCurve eCCurve) {
        return isF2mField(eCCurve.getField());
    }

    public static boolean isF2mField(FiniteField finiteField) {
        boolean z = true;
        if (finiteField.getDimension() <= 1 || !finiteField.getCharacteristic().equals(ECConstants.TWO) || !(finiteField instanceof PolynomialExtensionField)) {
            z = false;
        }
        return z;
    }

    public static boolean isFpCurve(ECCurve eCCurve) {
        return isFpField(eCCurve.getField());
    }

    public static boolean isFpField(FiniteField finiteField) {
        boolean z = true;
        if (finiteField.getDimension() != 1) {
            z = false;
        }
        return z;
    }

    public static void montgomeryTrick(ECFieldElement[] eCFieldElementArr, int i, int i2) {
        montgomeryTrick(eCFieldElementArr, i, i2, null);
    }

    public static void montgomeryTrick(ECFieldElement[] eCFieldElementArr, int i, int i2, ECFieldElement eCFieldElement) {
        ECFieldElement[] eCFieldElementArr2 = new ECFieldElement[i2];
        int i3 = 0;
        eCFieldElementArr2[0] = eCFieldElementArr[i];
        while (true) {
            i3++;
            if (i3 >= i2) {
                break;
            }
            eCFieldElementArr2[i3] = eCFieldElementArr2[i3 - 1].multiply(eCFieldElementArr[i + i3]);
        }
        int i4 = i3 - 1;
        if (eCFieldElement != null) {
            eCFieldElementArr2[i4] = eCFieldElementArr2[i4].multiply(eCFieldElement);
        }
        ECFieldElement invert = eCFieldElementArr2[i4].invert();
        while (i4 > 0) {
            int i5 = i4 - 1;
            int i6 = i4 + i;
            ECFieldElement eCFieldElement2 = eCFieldElementArr[i6];
            eCFieldElementArr[i6] = eCFieldElementArr2[i5].multiply(invert);
            invert = invert.multiply(eCFieldElement2);
            i4 = i5;
        }
        eCFieldElementArr[i] = invert;
    }

    public static ECPoint referenceMultiply(ECPoint eCPoint, BigInteger bigInteger) {
        BigInteger abs = bigInteger.abs();
        ECPoint infinity = eCPoint.getCurve().getInfinity();
        int bitLength = abs.bitLength();
        ECPoint eCPoint2 = infinity;
        if (bitLength > 0) {
            ECPoint eCPoint3 = infinity;
            if (abs.testBit(0)) {
                eCPoint3 = eCPoint;
            }
            int i = 1;
            ECPoint eCPoint4 = eCPoint;
            while (true) {
                eCPoint2 = eCPoint3;
                if (i >= bitLength) {
                    break;
                }
                eCPoint4 = eCPoint4.twice();
                eCPoint3 = eCPoint3;
                if (abs.testBit(i)) {
                    eCPoint3 = eCPoint3.add(eCPoint4);
                }
                i++;
            }
        }
        ECPoint eCPoint5 = eCPoint2;
        if (bigInteger.signum() < 0) {
            eCPoint5 = eCPoint2.negate();
        }
        return eCPoint5;
    }

    public static ECPoint shamirsTrick(ECPoint eCPoint, BigInteger bigInteger, ECPoint eCPoint2, BigInteger bigInteger2) {
        return validatePoint(implShamirsTrickJsf(eCPoint, bigInteger, importPoint(eCPoint.getCurve(), eCPoint2), bigInteger2));
    }

    public static ECPoint sumOfMultiplies(ECPoint[] eCPointArr, BigInteger[] bigIntegerArr) {
        if (!(eCPointArr == null || bigIntegerArr == null || eCPointArr.length != bigIntegerArr.length)) {
            if (eCPointArr.length >= 1) {
                int length = eCPointArr.length;
                switch (length) {
                    case 1:
                        return eCPointArr[0].multiply(bigIntegerArr[0]);
                    case 2:
                        return sumOfTwoMultiplies(eCPointArr[0], bigIntegerArr[0], eCPointArr[1], bigIntegerArr[1]);
                    default:
                        ECPoint eCPoint = eCPointArr[0];
                        ECCurve curve = eCPoint.getCurve();
                        ECPoint[] eCPointArr2 = new ECPoint[length];
                        eCPointArr2[0] = eCPoint;
                        for (int i = 1; i < length; i++) {
                            eCPointArr2[i] = importPoint(curve, eCPointArr[i]);
                        }
                        ECEndomorphism endomorphism = curve.getEndomorphism();
                        return endomorphism instanceof GLVEndomorphism ? validatePoint(implSumOfMultipliesGLV(eCPointArr2, bigIntegerArr, (GLVEndomorphism) endomorphism)) : validatePoint(implSumOfMultiplies(eCPointArr2, bigIntegerArr));
                }
            }
        }
        throw new IllegalArgumentException("point and scalar arrays should be non-null, and of equal, non-zero, length");
    }

    public static ECPoint sumOfTwoMultiplies(ECPoint eCPoint, BigInteger bigInteger, ECPoint eCPoint2, BigInteger bigInteger2) {
        ECCurve curve = eCPoint.getCurve();
        ECPoint importPoint = importPoint(curve, eCPoint2);
        if ((curve instanceof ECCurve.AbstractF2m) && ((ECCurve.AbstractF2m) curve).isKoblitz()) {
            return validatePoint(eCPoint.multiply(bigInteger).add(importPoint.multiply(bigInteger2)));
        }
        ECEndomorphism endomorphism = curve.getEndomorphism();
        if (!(endomorphism instanceof GLVEndomorphism)) {
            return validatePoint(implShamirsTrickWNaf(eCPoint, bigInteger, importPoint, bigInteger2));
        }
        return validatePoint(implSumOfMultipliesGLV(new ECPoint[]{eCPoint, importPoint}, new BigInteger[]{bigInteger, bigInteger2}, (GLVEndomorphism) endomorphism));
    }

    public static ECPoint validatePoint(ECPoint eCPoint) {
        if (eCPoint.isValid()) {
            return eCPoint;
        }
        throw new IllegalArgumentException("Invalid point");
    }
}
