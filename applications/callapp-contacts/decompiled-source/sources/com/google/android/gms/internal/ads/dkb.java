package com.google.android.gms.internal.ads;

import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.interfaces.ECPrivateKey;
import java.security.spec.ECField;
import java.security.spec.ECFieldFp;
import java.security.spec.ECParameterSpec;
import java.security.spec.ECPoint;
import java.security.spec.ECPublicKeySpec;
import java.security.spec.EllipticCurve;
import javax.crypto.KeyAgreement;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dkb.class */
public final class dkb {
    public static BigInteger a(EllipticCurve ellipticCurve) throws GeneralSecurityException {
        ECField field = ellipticCurve.getField();
        if (field instanceof ECFieldFp) {
            return ((ECFieldFp) field).getP();
        }
        throw new GeneralSecurityException("Only curves over prime order fields are supported");
    }

    public static KeyPair a(ECParameterSpec eCParameterSpec) throws GeneralSecurityException {
        KeyPairGenerator a2 = dkj.f26899d.a("EC");
        a2.initialize(eCParameterSpec);
        return a2.generateKeyPair();
    }

    public static ECParameterSpec a(dkd dkdVar) throws NoSuchAlgorithmException {
        int i = dke.f26888b[dkdVar.ordinal()];
        if (i == 1) {
            return a("115792089210356248762697446949407573530086143415290314195533631308867097853951", "115792089210356248762697446949407573529996955224135760342422259061068512044369", "5ac635d8aa3a93e7b3ebbd55769886bc651d06b0cc53b0f63bce3c3e27d2604b", "6b17d1f2e12c4247f8bce6e563a440f277037d812deb33a0f4a13945d898c296", "4fe342e2fe1a7f9b8ee7eb4a7c0f9e162bce33576b315ececbb6406837bf51f5");
        }
        if (i == 2) {
            return a("39402006196394479212279040100143613805079739270465446667948293404245721771496870329047266088258938001861606973112319", "39402006196394479212279040100143613805079739270465446667946905279627659399113263569398956308152294913554433653942643", "b3312fa7e23ee7e4988e056be3f82d19181d9c6efe8141120314088f5013875ac656398d8a2ed19d2a85c8edd3ec2aef", "aa87ca22be8b05378eb1c71ef320ad746e1d3b628ba79b9859f741e082542a385502f25dbf55296c3a545e3872760ab7", "3617de4a96262c6f5d9e98bf9292dc29f8f41dbd289a147ce9da3113b5f0b8c00a60b1ce1d7e819d7a431d7c90ea0e5f");
        }
        if (i == 3) {
            return a("6864797660130609714981900799081393217269435300143305409394463459185543183397656052122559640661454554977296311391480858037121987999716643812574028291115057151", "6864797660130609714981900799081393217269435300143305409394463459185543183397655394245057746333217197532963996371363321113864768612440380340372808892707005449", "051953eb9618e1c9a1f929a21a0b68540eea2da725b99b315f3b8b489918ef109e156193951ec7e937b1652c0bd3bb1bf073573df883d2c34f1ef451fd46b503f00", "c6858e06b70404e9cd9e3ecb662395b4429c648139053fb521f828af606b4d3dbaa14b5e77efe75928fe1dc127a2ffa8de3348b3c1856a429bf97e7e31c2e5bd66", "11839296a789a3bc0045c8a5fb42c7d1bd998f54449579b446817afbd17273e662c97ee72995ef42640c550b9013fad0761353c7086a272c24088be94769fd16650");
        }
        String valueOf = String.valueOf(dkdVar);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 22);
        sb.append("curve not implemented:");
        sb.append(valueOf);
        throw new NoSuchAlgorithmException(sb.toString());
    }

    private static ECParameterSpec a(String str, String str2, String str3, String str4, String str5) {
        BigInteger bigInteger = new BigInteger(str);
        return new ECParameterSpec(new EllipticCurve(new ECFieldFp(bigInteger), bigInteger.subtract(new BigInteger("3")), new BigInteger(str3, 16)), new ECPoint(new BigInteger(str4, 16), new BigInteger(str5, 16)), new BigInteger(str2), 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(ECPoint eCPoint, EllipticCurve ellipticCurve) throws GeneralSecurityException {
        BigInteger a2 = a(ellipticCurve);
        BigInteger affineX = eCPoint.getAffineX();
        BigInteger affineY = eCPoint.getAffineY();
        if (affineX == null || affineY == null) {
            throw new GeneralSecurityException("point is at infinity");
        } else if (affineX.signum() == -1 || affineX.compareTo(a2) >= 0) {
            throw new GeneralSecurityException("x is out of range");
        } else if (affineY.signum() == -1 || affineY.compareTo(a2) >= 0) {
            throw new GeneralSecurityException("y is out of range");
        } else if (!affineY.multiply(affineY).mod(a2).equals(affineX.multiply(affineX).add(ellipticCurve.getA()).multiply(affineX).add(ellipticCurve.getB()).mod(a2))) {
            throw new GeneralSecurityException("Point is not on curve");
        }
    }

    public static byte[] a(ECPrivateKey eCPrivateKey, ECPoint eCPoint) throws GeneralSecurityException {
        BigInteger bigInteger;
        BigInteger bigInteger2;
        a(eCPoint, eCPrivateKey.getParams().getCurve());
        PublicKey generatePublic = dkj.e.a("EC").generatePublic(new ECPublicKeySpec(eCPoint, eCPrivateKey.getParams()));
        KeyAgreement a2 = dkj.f26898c.a("ECDH");
        a2.init(eCPrivateKey);
        try {
            a2.doPhase(generatePublic, true);
            byte[] generateSecret = a2.generateSecret();
            EllipticCurve curve = eCPrivateKey.getParams().getCurve();
            BigInteger bigInteger3 = new BigInteger(1, generateSecret);
            if (bigInteger3.signum() == -1 || bigInteger3.compareTo(a(curve)) >= 0) {
                throw new GeneralSecurityException("shared secret is out of range");
            }
            BigInteger a3 = a(curve);
            BigInteger mod = bigInteger3.multiply(bigInteger3).add(curve.getA()).multiply(bigInteger3).add(curve.getB()).mod(a3);
            if (a3.signum() == 1) {
                BigInteger mod2 = mod.mod(a3);
                if (mod2.equals(BigInteger.ZERO)) {
                    bigInteger = BigInteger.ZERO;
                } else {
                    if (!a3.testBit(0) || !a3.testBit(1)) {
                        bigInteger2 = null;
                        if (a3.testBit(0)) {
                            bigInteger2 = null;
                            if (!a3.testBit(1)) {
                                BigInteger bigInteger4 = BigInteger.ONE;
                                BigInteger shiftRight = a3.subtract(BigInteger.ONE).shiftRight(1);
                                int i = 0;
                                while (true) {
                                    BigInteger mod3 = bigInteger4.multiply(bigInteger4).subtract(mod2).mod(a3);
                                    bigInteger = bigInteger4;
                                    if (mod3.equals(BigInteger.ZERO)) {
                                        break;
                                    }
                                    BigInteger modPow = mod3.modPow(shiftRight, a3);
                                    if (modPow.add(BigInteger.ONE).equals(a3)) {
                                        BigInteger shiftRight2 = a3.add(BigInteger.ONE).shiftRight(1);
                                        BigInteger bigInteger5 = BigInteger.ONE;
                                        BigInteger bigInteger6 = bigInteger4;
                                        for (int bitLength = shiftRight2.bitLength() - 2; bitLength >= 0; bitLength--) {
                                            BigInteger multiply = bigInteger6.multiply(bigInteger5);
                                            BigInteger mod4 = bigInteger6.multiply(bigInteger6).add(bigInteger5.multiply(bigInteger5).mod(a3).multiply(mod3)).mod(a3);
                                            BigInteger mod5 = multiply.add(multiply).mod(a3);
                                            bigInteger6 = mod4;
                                            bigInteger5 = mod5;
                                            if (shiftRight2.testBit(bitLength)) {
                                                bigInteger6 = mod4.multiply(bigInteger4).add(mod5.multiply(mod3)).mod(a3);
                                                bigInteger5 = bigInteger4.multiply(mod5).add(mod4).mod(a3);
                                            }
                                        }
                                        bigInteger2 = bigInteger6;
                                    } else if (modPow.equals(BigInteger.ONE)) {
                                        BigInteger add = bigInteger4.add(BigInteger.ONE);
                                        int i2 = i + 1;
                                        bigInteger4 = add;
                                        i = i2;
                                        if (i2 == 128) {
                                            if (a3.isProbablePrime(80)) {
                                                bigInteger4 = add;
                                                i = i2;
                                            } else {
                                                throw new InvalidAlgorithmParameterException("p is not prime");
                                            }
                                        }
                                    } else {
                                        throw new InvalidAlgorithmParameterException("p is not prime");
                                    }
                                }
                            }
                        }
                    } else {
                        bigInteger2 = mod2.modPow(a3.add(BigInteger.ONE).shiftRight(2), a3);
                    }
                    bigInteger = bigInteger2;
                    if (bigInteger2 != null) {
                        if (bigInteger2.multiply(bigInteger2).mod(a3).compareTo(mod2) == 0) {
                            bigInteger = bigInteger2;
                        } else {
                            throw new GeneralSecurityException("Could not find a modular square root");
                        }
                    }
                }
                if (true != bigInteger.testBit(0)) {
                    a3.subtract(bigInteger).mod(a3);
                }
                return generateSecret;
            }
            throw new InvalidAlgorithmParameterException("p must be positive");
        } catch (IllegalStateException e) {
            throw new GeneralSecurityException(e.toString());
        }
    }
}
