package org.bouncycastle.math.p012ec;

import java.math.BigInteger;
import org.bouncycastle.math.p012ec.ECCurve;
import org.bouncycastle.math.p012ec.ECPoint;
/* renamed from: org.bouncycastle.math.ec.Tnaf */
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/math/ec/Tnaf.class */
public class Tnaf {
    private static final BigInteger MINUS_ONE;
    private static final BigInteger MINUS_THREE;
    public static final byte POW_2_WIDTH = 16;
    public static final byte WIDTH = 4;
    public static final ZTauElement[] alpha0;
    public static final ZTauElement[] alpha1;
    private static final BigInteger MINUS_TWO = ECConstants.TWO.negate();
    public static final byte[][] alpha0Tnaf = {0, new byte[]{1}, 0, new byte[]{-1, 0, 1}, 0, new byte[]{1, 0, 1}, 0, new byte[]{-1, 0, 0, 1}};
    public static final byte[][] alpha1Tnaf = {0, new byte[]{1}, 0, new byte[]{-1, 0, 1}, 0, new byte[]{1, 0, 1}, 0, new byte[]{-1, 0, 0, -1}};

    /* JADX WARN: Type inference failed for: r0v15, types: [byte[], byte[][]] */
    /* JADX WARN: Type inference failed for: r0v23, types: [byte[], byte[][]] */
    static {
        BigInteger bigInteger = ECConstants.ONE;
        BigInteger negate = bigInteger.negate();
        MINUS_ONE = negate;
        BigInteger negate2 = ECConstants.THREE.negate();
        MINUS_THREE = negate2;
        BigInteger bigInteger2 = ECConstants.ZERO;
        alpha0 = new ZTauElement[]{null, new ZTauElement(bigInteger, bigInteger2), null, new ZTauElement(negate2, negate), null, new ZTauElement(negate, negate), null, new ZTauElement(bigInteger, negate), null};
        alpha1 = new ZTauElement[]{null, new ZTauElement(bigInteger, bigInteger2), null, new ZTauElement(negate2, bigInteger), null, new ZTauElement(negate, bigInteger), null, new ZTauElement(bigInteger, bigInteger), null};
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
                i2++;
                BigInteger bigInteger3 = bigInteger;
                bigInteger = (b == 1 ? bigInteger : bigInteger.negate()).subtract(bigInteger2.shiftLeft(1));
                bigInteger2 = bigInteger3;
            }
            return new BigInteger[]{bigInteger2, bigInteger};
        }
        throw new IllegalArgumentException("mu must be 1 or -1");
    }

    public static byte getMu(ECCurve.F2m f2m) {
        byte b;
        BigInteger bigInteger = f2m.getA().toBigInteger();
        if (bigInteger.equals(ECConstants.ZERO)) {
            b = -1;
        } else if (!bigInteger.equals(ECConstants.ONE)) {
            throw new IllegalArgumentException("No Koblitz curve (ABC), TNAF multiplication not possible");
        } else {
            b = 1;
        }
        return b;
    }

    public static ECPoint.F2m[] getPreComp(ECPoint.F2m f2m, byte b) {
        ECPoint.F2m[] f2mArr = new ECPoint.F2m[16];
        f2mArr[1] = f2m;
        byte[][] bArr = b == 0 ? alpha0Tnaf : alpha1Tnaf;
        int length = bArr.length;
        for (int i = 3; i < length; i += 2) {
            f2mArr[i] = multiplyFromTnaf(f2m, bArr[i]);
        }
        return f2mArr;
    }

    public static BigInteger[] getSi(ECCurve.F2m f2m) {
        BigInteger bigInteger;
        BigInteger bigInteger2;
        if (f2m.isKoblitz()) {
            int m = f2m.getM();
            int intValue = f2m.getA().toBigInteger().intValue();
            byte mu = f2m.getMu();
            int intValue2 = f2m.getH().intValue();
            BigInteger[] lucas = getLucas(mu, (m + 3) - intValue, false);
            if (mu == 1) {
                BigInteger bigInteger3 = ECConstants.ONE;
                bigInteger = bigInteger3.subtract(lucas[1]);
                bigInteger2 = bigInteger3.subtract(lucas[0]);
            } else if (mu != -1) {
                throw new IllegalArgumentException("mu must be 1 or -1");
            } else {
                BigInteger bigInteger4 = ECConstants.ONE;
                bigInteger = bigInteger4.add(lucas[1]);
                bigInteger2 = bigInteger4.add(lucas[0]);
            }
            BigInteger[] bigIntegerArr = new BigInteger[2];
            if (intValue2 == 2) {
                bigIntegerArr[0] = bigInteger.shiftRight(1);
                bigIntegerArr[1] = bigInteger2.shiftRight(1).negate();
            } else if (intValue2 != 4) {
                throw new IllegalArgumentException("h (Cofactor) must be 2 or 4");
            } else {
                bigIntegerArr[0] = bigInteger.shiftRight(2);
                bigIntegerArr[1] = bigInteger2.shiftRight(2).negate();
            }
            return bigIntegerArr;
        }
        throw new IllegalArgumentException("si is defined for Koblitz curves only");
    }

    public static BigInteger getTw(byte b, int i) {
        if (i == 4) {
            return b == 1 ? BigInteger.valueOf(6L) : BigInteger.valueOf(10L);
        }
        BigInteger[] lucas = getLucas(b, i, false);
        BigInteger bit = ECConstants.ZERO.setBit(i);
        return ECConstants.TWO.multiply(lucas[0]).multiply(lucas[1].modInverse(bit)).mod(bit);
    }

    public static ECPoint.F2m multiplyFromTnaf(ECPoint.F2m f2m, byte[] bArr) {
        ECPoint.F2m f2m2 = (ECPoint.F2m) ((ECCurve.F2m) f2m.getCurve()).getInfinity();
        for (int length = bArr.length - 1; length >= 0; length--) {
            ECPoint.F2m tau = tau(f2m2);
            if (bArr[length] == 1) {
                f2m2 = tau.addSimple(f2m);
            } else {
                f2m2 = tau;
                if (bArr[length] == -1) {
                    f2m2 = tau.subtractSimple(f2m);
                }
            }
        }
        return f2m2;
    }

    public static ECPoint.F2m multiplyRTnaf(ECPoint.F2m f2m, BigInteger bigInteger) {
        ECCurve.F2m f2m2 = (ECCurve.F2m) f2m.getCurve();
        return multiplyTnaf(f2m, partModReduction(bigInteger, f2m2.getM(), (byte) f2m2.getA().toBigInteger().intValue(), f2m2.getSi(), f2m2.getMu(), (byte) 10));
    }

    public static ECPoint.F2m multiplyTnaf(ECPoint.F2m f2m, ZTauElement zTauElement) {
        return multiplyFromTnaf(f2m, tauAdicNaf(((ECCurve.F2m) f2m.getCurve()).getMu(), zTauElement));
    }

    public static BigInteger norm(byte b, ZTauElement zTauElement) {
        BigInteger subtract;
        BigInteger bigInteger = zTauElement.f7675u;
        BigInteger multiply = bigInteger.multiply(bigInteger);
        BigInteger multiply2 = zTauElement.f7675u.multiply(zTauElement.f7676v);
        BigInteger bigInteger2 = zTauElement.f7676v;
        BigInteger shiftLeft = bigInteger2.multiply(bigInteger2).shiftLeft(1);
        if (b == 1) {
            subtract = multiply.add(multiply2);
        } else if (b != -1) {
            throw new IllegalArgumentException("mu must be 1 or -1");
        } else {
            subtract = multiply.subtract(multiply2);
        }
        return subtract.add(shiftLeft);
    }

    public static SimpleBigDecimal norm(byte b, SimpleBigDecimal simpleBigDecimal, SimpleBigDecimal simpleBigDecimal2) {
        SimpleBigDecimal subtract;
        SimpleBigDecimal multiply = simpleBigDecimal.multiply(simpleBigDecimal);
        SimpleBigDecimal multiply2 = simpleBigDecimal.multiply(simpleBigDecimal2);
        SimpleBigDecimal shiftLeft = simpleBigDecimal2.multiply(simpleBigDecimal2).shiftLeft(1);
        if (b == 1) {
            subtract = multiply.add(multiply2);
        } else if (b != -1) {
            throw new IllegalArgumentException("mu must be 1 or -1");
        } else {
            subtract = multiply.subtract(multiply2);
        }
        return subtract.add(shiftLeft);
    }

    public static ZTauElement partModReduction(BigInteger bigInteger, int i, byte b, BigInteger[] bigIntegerArr, byte b2, byte b3) {
        BigInteger add = b2 == 1 ? bigIntegerArr[0].add(bigIntegerArr[1]) : bigIntegerArr[0].subtract(bigIntegerArr[1]);
        BigInteger bigInteger2 = getLucas(b2, i, true)[1];
        ZTauElement round = round(approximateDivisionByN(bigInteger, bigIntegerArr[0], bigInteger2, b, i, b3), approximateDivisionByN(bigInteger, bigIntegerArr[1], bigInteger2, b, i, b3), b2);
        return new ZTauElement(bigInteger.subtract(add.multiply(round.f7675u)).subtract(BigInteger.valueOf(2L).multiply(bigIntegerArr[1]).multiply(round.f7676v)), bigIntegerArr[1].multiply(round.f7675u).subtract(bigIntegerArr[0].multiply(round.f7676v)));
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x00bc, code lost:
        if (r8.compareTo(org.bouncycastle.math.p012ec.Tnaf.MINUS_ONE) < 0) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00cd, code lost:
        if (r15.compareTo(org.bouncycastle.math.p012ec.ECConstants.TWO) >= 0) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00e5, code lost:
        if (r8.compareTo(r0) >= 0) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00f3, code lost:
        if (r15.compareTo(org.bouncycastle.math.p012ec.Tnaf.MINUS_TWO) < 0) goto L32;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static org.bouncycastle.math.p012ec.ZTauElement round(org.bouncycastle.math.p012ec.SimpleBigDecimal r7, org.bouncycastle.math.p012ec.SimpleBigDecimal r8, byte r9) {
        /*
            Method dump skipped, instructions count: 294
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.math.p012ec.Tnaf.round(org.bouncycastle.math.ec.SimpleBigDecimal, org.bouncycastle.math.ec.SimpleBigDecimal, byte):org.bouncycastle.math.ec.ZTauElement");
    }

    public static ECPoint.F2m tau(ECPoint.F2m f2m) {
        if (f2m.isInfinity()) {
            return f2m;
        }
        return new ECPoint.F2m(f2m.getCurve(), f2m.getX().square(), f2m.getY().square(), f2m.isCompressed());
    }

    public static byte[] tauAdicNaf(byte b, ZTauElement zTauElement) {
        BigInteger bigInteger;
        if (b == 1 || b == -1) {
            int bitLength = norm(b, zTauElement).bitLength();
            byte[] bArr = new byte[bitLength > 30 ? bitLength + 4 : 34];
            BigInteger bigInteger2 = zTauElement.f7675u;
            BigInteger bigInteger3 = zTauElement.f7676v;
            int i = 0;
            int i2 = 0;
            BigInteger bigInteger4 = bigInteger2;
            while (true) {
                BigInteger bigInteger5 = ECConstants.ZERO;
                if (bigInteger4.equals(bigInteger5) && bigInteger3.equals(bigInteger5)) {
                    int i3 = i + 1;
                    byte[] bArr2 = new byte[i3];
                    System.arraycopy(bArr, 0, bArr2, 0, i3);
                    return bArr2;
                }
                if (bigInteger4.testBit(0)) {
                    bArr[i2] = (byte) ECConstants.TWO.subtract(bigInteger4.subtract(bigInteger3.shiftLeft(1)).mod(ECConstants.FOUR)).intValue();
                    i = i2;
                    bigInteger = bArr[i2] == 1 ? bigInteger4.clearBit(0) : bigInteger4.add(ECConstants.ONE);
                } else {
                    bArr[i2] = (byte) 0;
                    bigInteger = bigInteger4;
                }
                BigInteger shiftRight = bigInteger.shiftRight(1);
                bigInteger4 = b == 1 ? bigInteger3.add(shiftRight) : bigInteger3.subtract(shiftRight);
                bigInteger3 = bigInteger.shiftRight(1).negate();
                i2++;
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
            BigInteger bigInteger5 = zTauElement.f7675u;
            BigInteger bigInteger6 = zTauElement.f7676v;
            int i = 0;
            while (true) {
                BigInteger bigInteger7 = ECConstants.ZERO;
                if (bigInteger5.equals(bigInteger7) && bigInteger6.equals(bigInteger7)) {
                    return bArr;
                }
                if (bigInteger5.testBit(0)) {
                    BigInteger mod = bigInteger5.add(bigInteger6.multiply(bigInteger2)).mod(bigInteger);
                    BigInteger bigInteger8 = mod;
                    if (mod.compareTo(shiftRight) >= 0) {
                        bigInteger8 = mod.subtract(bigInteger);
                    }
                    byte intValue = (byte) bigInteger8.intValue();
                    bArr[i] = intValue;
                    if (intValue < 0) {
                        intValue = (byte) (-intValue);
                        z = false;
                    } else {
                        z = true;
                    }
                    if (z) {
                        BigInteger subtract = bigInteger5.subtract(zTauElementArr[intValue].f7675u);
                        bigInteger3 = bigInteger6.subtract(zTauElementArr[intValue].f7676v);
                        bigInteger4 = subtract;
                    } else {
                        BigInteger add = bigInteger5.add(zTauElementArr[intValue].f7675u);
                        bigInteger3 = bigInteger6.add(zTauElementArr[intValue].f7676v);
                        bigInteger4 = add;
                    }
                } else {
                    bArr[i] = (byte) 0;
                    bigInteger3 = bigInteger6;
                    bigInteger4 = bigInteger5;
                }
                BigInteger shiftRight2 = bigInteger4.shiftRight(1);
                bigInteger5 = b == 1 ? bigInteger3.add(shiftRight2) : bigInteger3.subtract(shiftRight2);
                bigInteger6 = bigInteger4.shiftRight(1).negate();
                i++;
            }
        } else {
            throw new IllegalArgumentException("mu must be 1 or -1");
        }
    }
}
