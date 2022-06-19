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
    /* renamed from: a */
    public static BigInteger m16543a(EllipticCurve ellipticCurve) throws GeneralSecurityException {
        ECField field = ellipticCurve.getField();
        if (field instanceof ECFieldFp) {
            return ((ECFieldFp) field).getP();
        }
        throw new GeneralSecurityException("Only curves over prime order fields are supported");
    }

    /* renamed from: a */
    public static KeyPair m16545a(ECParameterSpec eCParameterSpec) throws GeneralSecurityException {
        KeyPairGenerator m16538a = dkj.f47149d.m16538a("EC");
        m16538a.initialize(eCParameterSpec);
        return m16538a.generateKeyPair();
    }

    /* renamed from: a */
    public static ECParameterSpec m16548a(dkd dkdVar) throws NoSuchAlgorithmException {
        int i = dke.f47138b[dkdVar.ordinal()];
        if (i != 1) {
            if (i == 2) {
                return m16547a("39402006196394479212279040100143613805079739270465446667948293404245721771496870329047266088258938001861606973112319", "39402006196394479212279040100143613805079739270465446667946905279627659399113263569398956308152294913554433653942643", "b3312fa7e23ee7e4988e056be3f82d19181d9c6efe8141120314088f5013875ac656398d8a2ed19d2a85c8edd3ec2aef", "aa87ca22be8b05378eb1c71ef320ad746e1d3b628ba79b9859f741e082542a385502f25dbf55296c3a545e3872760ab7", "3617de4a96262c6f5d9e98bf9292dc29f8f41dbd289a147ce9da3113b5f0b8c00a60b1ce1d7e819d7a431d7c90ea0e5f");
            }
            if (i == 3) {
                return m16547a("6864797660130609714981900799081393217269435300143305409394463459185543183397656052122559640661454554977296311391480858037121987999716643812574028291115057151", "6864797660130609714981900799081393217269435300143305409394463459185543183397655394245057746333217197532963996371363321113864768612440380340372808892707005449", "051953eb9618e1c9a1f929a21a0b68540eea2da725b99b315f3b8b489918ef109e156193951ec7e937b1652c0bd3bb1bf073573df883d2c34f1ef451fd46b503f00", "c6858e06b70404e9cd9e3ecb662395b4429c648139053fb521f828af606b4d3dbaa14b5e77efe75928fe1dc127a2ffa8de3348b3c1856a429bf97e7e31c2e5bd66", "11839296a789a3bc0045c8a5fb42c7d1bd998f54449579b446817afbd17273e662c97ee72995ef42640c550b9013fad0761353c7086a272c24088be94769fd16650");
            }
            String valueOf = String.valueOf(dkdVar);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 22);
            sb.append("curve not implemented:");
            sb.append(valueOf);
            throw new NoSuchAlgorithmException(sb.toString());
        }
        return m16547a("115792089210356248762697446949407573530086143415290314195533631308867097853951", "115792089210356248762697446949407573529996955224135760342422259061068512044369", "5ac635d8aa3a93e7b3ebbd55769886bc651d06b0cc53b0f63bce3c3e27d2604b", "6b17d1f2e12c4247f8bce6e563a440f277037d812deb33a0f4a13945d898c296", "4fe342e2fe1a7f9b8ee7eb4a7c0f9e162bce33576b315ececbb6406837bf51f5");
    }

    /* renamed from: a */
    private static ECParameterSpec m16547a(String str, String str2, String str3, String str4, String str5) {
        BigInteger bigInteger = new BigInteger(str);
        return new ECParameterSpec(new EllipticCurve(new ECFieldFp(bigInteger), bigInteger.subtract(new BigInteger("3")), new BigInteger(str3, 16)), new ECPoint(new BigInteger(str4, 16), new BigInteger(str5, 16)), new BigInteger(str2), 1);
    }

    /* renamed from: a */
    public static void m16544a(ECPoint eCPoint, EllipticCurve ellipticCurve) throws GeneralSecurityException {
        BigInteger m16543a = m16543a(ellipticCurve);
        BigInteger affineX = eCPoint.getAffineX();
        BigInteger affineY = eCPoint.getAffineY();
        if (affineX == null || affineY == null) {
            throw new GeneralSecurityException("point is at infinity");
        }
        if (affineX.signum() == -1 || affineX.compareTo(m16543a) >= 0) {
            throw new GeneralSecurityException("x is out of range");
        }
        if (affineY.signum() == -1 || affineY.compareTo(m16543a) >= 0) {
            throw new GeneralSecurityException("y is out of range");
        }
        if (!affineY.multiply(affineY).mod(m16543a).equals(affineX.multiply(affineX).add(ellipticCurve.getA()).multiply(affineX).add(ellipticCurve.getB()).mod(m16543a))) {
            throw new GeneralSecurityException("Point is not on curve");
        }
    }

    /* renamed from: a */
    public static byte[] m16546a(ECPrivateKey eCPrivateKey, ECPoint eCPoint) throws GeneralSecurityException {
        BigInteger bigInteger;
        BigInteger bigInteger2;
        m16544a(eCPoint, eCPrivateKey.getParams().getCurve());
        PublicKey generatePublic = dkj.f47150e.m16538a("EC").generatePublic(new ECPublicKeySpec(eCPoint, eCPrivateKey.getParams()));
        KeyAgreement m16538a = dkj.f47148c.m16538a("ECDH");
        m16538a.init(eCPrivateKey);
        try {
            m16538a.doPhase(generatePublic, true);
            byte[] generateSecret = m16538a.generateSecret();
            EllipticCurve curve = eCPrivateKey.getParams().getCurve();
            BigInteger bigInteger3 = new BigInteger(1, generateSecret);
            if (bigInteger3.signum() == -1 || bigInteger3.compareTo(m16543a(curve)) >= 0) {
                throw new GeneralSecurityException("shared secret is out of range");
            }
            BigInteger m16543a = m16543a(curve);
            BigInteger mod = bigInteger3.multiply(bigInteger3).add(curve.getA()).multiply(bigInteger3).add(curve.getB()).mod(m16543a);
            if (m16543a.signum() != 1) {
                throw new InvalidAlgorithmParameterException("p must be positive");
            }
            BigInteger mod2 = mod.mod(m16543a);
            if (mod2.equals(BigInteger.ZERO)) {
                bigInteger = BigInteger.ZERO;
            } else {
                if (!m16543a.testBit(0) || !m16543a.testBit(1)) {
                    bigInteger2 = null;
                    if (m16543a.testBit(0)) {
                        bigInteger2 = null;
                        if (!m16543a.testBit(1)) {
                            BigInteger bigInteger4 = BigInteger.ONE;
                            BigInteger shiftRight = m16543a.subtract(BigInteger.ONE).shiftRight(1);
                            int i = 0;
                            while (true) {
                                BigInteger mod3 = bigInteger4.multiply(bigInteger4).subtract(mod2).mod(m16543a);
                                bigInteger = bigInteger4;
                                if (mod3.equals(BigInteger.ZERO)) {
                                    break;
                                }
                                BigInteger modPow = mod3.modPow(shiftRight, m16543a);
                                if (modPow.add(BigInteger.ONE).equals(m16543a)) {
                                    BigInteger shiftRight2 = m16543a.add(BigInteger.ONE).shiftRight(1);
                                    BigInteger bigInteger5 = BigInteger.ONE;
                                    BigInteger bigInteger6 = bigInteger4;
                                    for (int bitLength = shiftRight2.bitLength() - 2; bitLength >= 0; bitLength--) {
                                        BigInteger multiply = bigInteger6.multiply(bigInteger5);
                                        BigInteger mod4 = bigInteger6.multiply(bigInteger6).add(bigInteger5.multiply(bigInteger5).mod(m16543a).multiply(mod3)).mod(m16543a);
                                        BigInteger mod5 = multiply.add(multiply).mod(m16543a);
                                        bigInteger6 = mod4;
                                        bigInteger5 = mod5;
                                        if (shiftRight2.testBit(bitLength)) {
                                            bigInteger6 = mod4.multiply(bigInteger4).add(mod5.multiply(mod3)).mod(m16543a);
                                            bigInteger5 = bigInteger4.multiply(mod5).add(mod4).mod(m16543a);
                                        }
                                    }
                                    bigInteger2 = bigInteger6;
                                } else if (!modPow.equals(BigInteger.ONE)) {
                                    throw new InvalidAlgorithmParameterException("p is not prime");
                                } else {
                                    BigInteger add = bigInteger4.add(BigInteger.ONE);
                                    int i2 = i + 1;
                                    bigInteger4 = add;
                                    i = i2;
                                    if (i2 == 128) {
                                        if (!m16543a.isProbablePrime(80)) {
                                            throw new InvalidAlgorithmParameterException("p is not prime");
                                        }
                                        bigInteger4 = add;
                                        i = i2;
                                    }
                                }
                            }
                        }
                    }
                } else {
                    bigInteger2 = mod2.modPow(m16543a.add(BigInteger.ONE).shiftRight(2), m16543a);
                }
                bigInteger = bigInteger2;
                if (bigInteger2 != null) {
                    if (bigInteger2.multiply(bigInteger2).mod(m16543a).compareTo(mod2) != 0) {
                        throw new GeneralSecurityException("Could not find a modular square root");
                    }
                    bigInteger = bigInteger2;
                }
            }
            if (true != bigInteger.testBit(0)) {
                m16543a.subtract(bigInteger).mod(m16543a);
            }
            return generateSecret;
        } catch (IllegalStateException e) {
            throw new GeneralSecurityException(e.toString());
        }
    }
}
