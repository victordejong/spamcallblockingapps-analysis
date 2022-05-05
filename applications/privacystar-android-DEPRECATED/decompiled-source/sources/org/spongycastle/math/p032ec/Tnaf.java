package org.spongycastle.math.p032ec;

import java.math.BigInteger;
import org.spongycastle.math.p032ec.ECCurve;
import org.spongycastle.math.p032ec.ECPoint;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: org.spongycastle.math.ec.Tnaf */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/math/ec/Tnaf.class */
public class Tnaf {
    public static final byte POW_2_WIDTH = 16;
    public static final byte WIDTH = 4;
    private static final BigInteger MINUS_ONE = ECConstants.ONE.negate();
    private static final BigInteger MINUS_TWO = ECConstants.TWO.negate();
    private static final BigInteger MINUS_THREE = ECConstants.THREE.negate();
    public static final ZTauElement[] alpha0 = {null, new ZTauElement(ECConstants.ONE, ECConstants.ZERO), null, new ZTauElement(MINUS_THREE, MINUS_ONE), null, new ZTauElement(MINUS_ONE, MINUS_ONE), null, new ZTauElement(ECConstants.ONE, MINUS_ONE), null};
    public static final byte[][] alpha0Tnaf = {0, new byte[]{1}, 0, new byte[]{-1, 0, 1}, 0, new byte[]{1, 0, 1}, 0, new byte[]{-1, 0, 0, 1}};
    public static final ZTauElement[] alpha1 = {null, new ZTauElement(ECConstants.ONE, ECConstants.ZERO), null, new ZTauElement(MINUS_THREE, ECConstants.ONE), null, new ZTauElement(MINUS_ONE, ECConstants.ONE), null, new ZTauElement(ECConstants.ONE, ECConstants.ONE), null};
    public static final byte[][] alpha1Tnaf = {0, new byte[]{1}, 0, new byte[]{-1, 0, 1}, 0, new byte[]{1, 0, 1}, 0, new byte[]{-1, 0, 0, -1}};

    Tnaf() {
    }

    public static SimpleBigDecimal approximateDivisionByN(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, byte b, int i, int i2) {
        int i3 = ((i + 5) / 2) + i2;
        BigInteger multiply = bigInteger2.multiply(bigInteger.shiftRight(((i - i3) - 2) + b));
        BigInteger add = multiply.add(bigInteger3.multiply(multiply.shiftRight(i)));
        int i4 = i3 - i2;
        BigInteger shiftRight = add.shiftRight(i4);
        BigInteger bigInteger4 = shiftRight;
        if (add.testBit(i4 - 1)) {
            bigInteger4 = shiftRight.add(ECConstants.ONE);
        }
        return new SimpleBigDecimal(bigInteger4, i2);
    }

    public static BigInteger[] getLucas(byte b, int i, boolean z) {
        BigInteger bigInteger;
        BigInteger bigInteger2;
        if (b == 1 || b == -1) {
            if (z) {
                bigInteger2 = ECConstants.TWO;
                bigInteger = BigInteger.valueOf(b);
            } else {
                bigInteger2 = ECConstants.ZERO;
                bigInteger = ECConstants.ONE;
            }
            int i2 = 1;
            while (i2 < i) {
                bigInteger = (b == 1 ? bigInteger : bigInteger.negate()).subtract(bigInteger2.shiftLeft(1));
                i2++;
                bigInteger2 = bigInteger;
            }
            return new BigInteger[]{bigInteger2, bigInteger};
        }
        throw new IllegalArgumentException("mu must be 1 or -1");
    }

    public static byte getMu(int i) {
        return (byte) (i == 0 ? -1 : 1);
    }

    public static byte getMu(ECCurve.AbstractF2m abstractF2m) {
        if (abstractF2m.isKoblitz()) {
            return abstractF2m.getA().isZero() ? (byte) -1 : (byte) 1;
        }
        throw new IllegalArgumentException("No Koblitz curve (ABC), TNAF multiplication not possible");
    }

    public static byte getMu(ECFieldElement eCFieldElement) {
        return (byte) (eCFieldElement.isZero() ? -1 : 1);
    }

    public static ECPoint.AbstractF2m[] getPreComp(ECPoint.AbstractF2m abstractF2m, byte b) {
        byte[][] bArr = b == 0 ? alpha0Tnaf : alpha1Tnaf;
        ECPoint.AbstractF2m[] abstractF2mArr = new ECPoint.AbstractF2m[(bArr.length + 1) >>> 1];
        abstractF2mArr[0] = abstractF2m;
        int length = bArr.length;
        for (int i = 3; i < length; i += 2) {
            abstractF2mArr[i >>> 1] = multiplyFromTnaf(abstractF2m, bArr[i]);
        }
        abstractF2m.getCurve().normalizeAll(abstractF2mArr);
        return abstractF2mArr;
    }

    protected static int getShiftsForCofactor(BigInteger bigInteger) {
        if (bigInteger != null) {
            if (bigInteger.equals(ECConstants.TWO)) {
                return 1;
            }
            if (bigInteger.equals(ECConstants.FOUR)) {
                return 2;
            }
        }
        throw new IllegalArgumentException("h (Cofactor) must be 2 or 4");
    }

    public static BigInteger[] getSi(int i, int i2, BigInteger bigInteger) {
        byte mu = getMu(i2);
        int shiftsForCofactor = getShiftsForCofactor(bigInteger);
        BigInteger[] lucas = getLucas(mu, (i + 3) - i2, false);
        if (mu == 1) {
            lucas[0] = lucas[0].negate();
            lucas[1] = lucas[1].negate();
        }
        return new BigInteger[]{ECConstants.ONE.add(lucas[1]).shiftRight(shiftsForCofactor), ECConstants.ONE.add(lucas[0]).shiftRight(shiftsForCofactor).negate()};
    }

    public static BigInteger[] getSi(ECCurve.AbstractF2m abstractF2m) {
        if (!abstractF2m.isKoblitz()) {
            throw new IllegalArgumentException("si is defined for Koblitz curves only");
        }
        int fieldSize = abstractF2m.getFieldSize();
        int intValue = abstractF2m.getA().toBigInteger().intValue();
        byte mu = getMu(intValue);
        int shiftsForCofactor = getShiftsForCofactor(abstractF2m.getCofactor());
        BigInteger[] lucas = getLucas(mu, (fieldSize + 3) - intValue, false);
        if (mu == 1) {
            lucas[0] = lucas[0].negate();
            lucas[1] = lucas[1].negate();
        }
        return new BigInteger[]{ECConstants.ONE.add(lucas[1]).shiftRight(shiftsForCofactor), ECConstants.ONE.add(lucas[0]).shiftRight(shiftsForCofactor).negate()};
    }

    public static BigInteger getTw(byte b, int i) {
        if (i == 4) {
            return b == 1 ? BigInteger.valueOf(6L) : BigInteger.valueOf(10L);
        }
        BigInteger[] lucas = getLucas(b, i, false);
        BigInteger bit = ECConstants.ZERO.setBit(i);
        return ECConstants.TWO.multiply(lucas[0]).multiply(lucas[1].modInverse(bit)).mod(bit);
    }

    public static ECPoint.AbstractF2m multiplyFromTnaf(ECPoint.AbstractF2m abstractF2m, byte[] bArr) {
        ECPoint.AbstractF2m abstractF2m2 = (ECPoint.AbstractF2m) abstractF2m.getCurve().getInfinity();
        ECPoint.AbstractF2m abstractF2m3 = (ECPoint.AbstractF2m) abstractF2m.negate();
        int i = 0;
        for (int length = bArr.length - 1; length >= 0; length--) {
            int i2 = i + 1;
            byte b = bArr[length];
            i = i2;
            abstractF2m2 = abstractF2m2;
            if (b != 0) {
                ECPoint.AbstractF2m tauPow = abstractF2m2.tauPow(i2);
                if (b > 0) {
                    abstractF2m3 = abstractF2m;
                }
                abstractF2m2 = (ECPoint.AbstractF2m) tauPow.add(abstractF2m3);
                i = 0;
            }
        }
        ECPoint.AbstractF2m abstractF2m4 = abstractF2m2;
        if (i > 0) {
            abstractF2m4 = abstractF2m2.tauPow(i);
        }
        return abstractF2m4;
    }

    public static ECPoint.AbstractF2m multiplyRTnaf(ECPoint.AbstractF2m abstractF2m, BigInteger bigInteger) {
        ECCurve.AbstractF2m abstractF2m2 = (ECCurve.AbstractF2m) abstractF2m.getCurve();
        int fieldSize = abstractF2m2.getFieldSize();
        int intValue = abstractF2m2.getA().toBigInteger().intValue();
        return multiplyTnaf(abstractF2m, partModReduction(bigInteger, fieldSize, (byte) intValue, abstractF2m2.getSi(), getMu(intValue), (byte) 10));
    }

    public static ECPoint.AbstractF2m multiplyTnaf(ECPoint.AbstractF2m abstractF2m, ZTauElement zTauElement) {
        return multiplyFromTnaf(abstractF2m, tauAdicNaf(getMu(((ECCurve.AbstractF2m) abstractF2m.getCurve()).getA()), zTauElement));
    }

    public static BigInteger norm(byte b, ZTauElement zTauElement) {
        BigInteger bigInteger;
        BigInteger multiply = zTauElement.f1554u.multiply(zTauElement.f1554u);
        BigInteger multiply2 = zTauElement.f1554u.multiply(zTauElement.f1555v);
        BigInteger shiftLeft = zTauElement.f1555v.multiply(zTauElement.f1555v).shiftLeft(1);
        if (b == 1) {
            bigInteger = multiply.add(multiply2).add(shiftLeft);
        } else if (b == -1) {
            bigInteger = multiply.subtract(multiply2).add(shiftLeft);
        } else {
            throw new IllegalArgumentException("mu must be 1 or -1");
        }
        return bigInteger;
    }

    public static SimpleBigDecimal norm(byte b, SimpleBigDecimal simpleBigDecimal, SimpleBigDecimal simpleBigDecimal2) {
        SimpleBigDecimal simpleBigDecimal3;
        SimpleBigDecimal multiply = simpleBigDecimal.multiply(simpleBigDecimal);
        SimpleBigDecimal multiply2 = simpleBigDecimal.multiply(simpleBigDecimal2);
        SimpleBigDecimal shiftLeft = simpleBigDecimal2.multiply(simpleBigDecimal2).shiftLeft(1);
        if (b == 1) {
            simpleBigDecimal3 = multiply.add(multiply2).add(shiftLeft);
        } else if (b == -1) {
            simpleBigDecimal3 = multiply.subtract(multiply2).add(shiftLeft);
        } else {
            throw new IllegalArgumentException("mu must be 1 or -1");
        }
        return simpleBigDecimal3;
    }

    public static ZTauElement partModReduction(BigInteger bigInteger, int i, byte b, BigInteger[] bigIntegerArr, byte b2, byte b3) {
        BigInteger add = b2 == 1 ? bigIntegerArr[0].add(bigIntegerArr[1]) : bigIntegerArr[0].subtract(bigIntegerArr[1]);
        BigInteger bigInteger2 = getLucas(b2, i, true)[1];
        ZTauElement round = round(approximateDivisionByN(bigInteger, bigIntegerArr[0], bigInteger2, b, i, b3), approximateDivisionByN(bigInteger, bigIntegerArr[1], bigInteger2, b, i, b3), b2);
        return new ZTauElement(bigInteger.subtract(add.multiply(round.f1554u)).subtract(BigInteger.valueOf(2L).multiply(bigIntegerArr[1]).multiply(round.f1555v)), bigIntegerArr[1].multiply(round.f1554u).subtract(bigIntegerArr[0].multiply(round.f1555v)));
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00dd  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00f9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static org.spongycastle.math.p032ec.ZTauElement round(org.spongycastle.math.p032ec.SimpleBigDecimal r7, org.spongycastle.math.p032ec.SimpleBigDecimal r8, byte r9) {
        /*
            Method dump skipped, instructions count: 300
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.math.p032ec.Tnaf.round(org.spongycastle.math.ec.SimpleBigDecimal, org.spongycastle.math.ec.SimpleBigDecimal, byte):org.spongycastle.math.ec.ZTauElement");
    }

    public static ECPoint.AbstractF2m tau(ECPoint.AbstractF2m abstractF2m) {
        return abstractF2m.tau();
    }

    public static byte[] tauAdicNaf(byte b, ZTauElement zTauElement) {
        BigInteger bigInteger;
        if (b == 1 || b == -1) {
            int bitLength = norm(b, zTauElement).bitLength();
            byte[] bArr = new byte[bitLength > 30 ? bitLength + 4 : 34];
            BigInteger bigInteger2 = zTauElement.f1554u;
            BigInteger bigInteger3 = zTauElement.f1555v;
            int i = 0;
            int i2 = 0;
            while (true) {
                if (!bigInteger2.equals(ECConstants.ZERO) || !bigInteger3.equals(ECConstants.ZERO)) {
                    if (bigInteger2.testBit(0)) {
                        bArr[i2] = (byte) ECConstants.TWO.subtract(bigInteger2.subtract(bigInteger3.shiftLeft(1)).mod(ECConstants.FOUR)).intValue();
                        bigInteger = bArr[i2] == 1 ? bigInteger2.clearBit(0) : bigInteger2.add(ECConstants.ONE);
                        i = i2;
                    } else {
                        bArr[i2] = (byte) 0;
                        bigInteger = bigInteger2;
                    }
                    BigInteger shiftRight = bigInteger.shiftRight(1);
                    bigInteger2 = b == 1 ? bigInteger3.add(shiftRight) : bigInteger3.subtract(shiftRight);
                    bigInteger3 = bigInteger.shiftRight(1).negate();
                    i2++;
                } else {
                    int i3 = i + 1;
                    byte[] bArr2 = new byte[i3];
                    System.arraycopy(bArr, 0, bArr2, 0, i3);
                    return bArr2;
                }
            }
        } else {
            throw new IllegalArgumentException("mu must be 1 or -1");
        }
    }

    public static byte[] tauAdicWNaf(byte b, ZTauElement zTauElement, byte b2, BigInteger bigInteger, BigInteger bigInteger2, ZTauElement[] zTauElementArr) {
        BigInteger bigInteger3;
        BigInteger bigInteger4;
        boolean z;
        if (b == 1 || b == -1) {
            int bitLength = norm(b, zTauElement).bitLength();
            byte[] bArr = new byte[bitLength > 30 ? bitLength + 4 + b2 : b2 + 34];
            BigInteger shiftRight = bigInteger.shiftRight(1);
            BigInteger bigInteger5 = zTauElement.f1554u;
            BigInteger bigInteger6 = zTauElement.f1555v;
            int i = 0;
            while (true) {
                if (bigInteger5.equals(ECConstants.ZERO) && bigInteger6.equals(ECConstants.ZERO)) {
                    return bArr;
                }
                if (bigInteger5.testBit(0)) {
                    BigInteger mod = bigInteger5.add(bigInteger6.multiply(bigInteger2)).mod(bigInteger);
                    byte intValue = mod.compareTo(shiftRight) >= 0 ? (byte) mod.subtract(bigInteger).intValue() : (byte) mod.intValue();
                    bArr[i] = intValue;
                    if (intValue < 0) {
                        intValue = (byte) (-intValue);
                        z = false;
                    } else {
                        z = true;
                    }
                    if (z) {
                        bigInteger4 = bigInteger5.subtract(zTauElementArr[intValue].f1554u);
                        bigInteger3 = bigInteger6.subtract(zTauElementArr[intValue].f1555v);
                    } else {
                        bigInteger4 = bigInteger5.add(zTauElementArr[intValue].f1554u);
                        bigInteger3 = bigInteger6.add(zTauElementArr[intValue].f1555v);
                    }
                } else {
                    bArr[i] = (byte) 0;
                    bigInteger3 = bigInteger6;
                    bigInteger4 = bigInteger5;
                }
                bigInteger5 = b == 1 ? bigInteger3.add(bigInteger4.shiftRight(1)) : bigInteger3.subtract(bigInteger4.shiftRight(1));
                bigInteger6 = bigInteger4.shiftRight(1).negate();
                i++;
            }
        } else {
            throw new IllegalArgumentException("mu must be 1 or -1");
        }
    }
}
