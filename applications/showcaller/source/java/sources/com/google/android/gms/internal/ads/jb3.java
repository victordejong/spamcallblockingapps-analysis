package com.google.android.gms.internal.ads;

import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.security.KeyPair;
import java.security.PublicKey;
import java.security.interfaces.ECPrivateKey;
import java.security.interfaces.ECPublicKey;
import java.security.spec.ECParameterSpec;
import java.security.spec.ECPoint;
import java.security.spec.ECPublicKeySpec;
import java.security.spec.EllipticCurve;
import java.util.Arrays;
import javax.crypto.KeyAgreement;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/jb3.class */
public final class jb3 {

    /* renamed from: a */
    private final ECPublicKey f24838a;

    public jb3(ECPublicKey eCPublicKey) {
        this.f24838a = eCPublicKey;
    }

    /* JADX WARN: Type inference failed for: r0v184, types: [byte[], byte[][]] */
    /* renamed from: a */
    public final ib3 m14139a(String str, byte[] bArr, byte[] bArr2, int i, int i2) {
        BigInteger bigInteger;
        byte[] bArr3;
        KeyPair m13926c = kb3.m13926c(this.f24838a.getParams());
        ECPublicKey eCPublicKey = (ECPublicKey) m13926c.getPublic();
        ECPrivateKey eCPrivateKey = (ECPrivateKey) m13926c.getPrivate();
        ECPublicKey eCPublicKey2 = this.f24838a;
        try {
            ECParameterSpec params = eCPublicKey2.getParams();
            ECParameterSpec params2 = eCPrivateKey.getParams();
            if (!params.getCurve().equals(params2.getCurve()) || !params.getGenerator().equals(params2.getGenerator()) || !params.getOrder().equals(params2.getOrder()) || params.getCofactor() != params2.getCofactor()) {
                throw new GeneralSecurityException("invalid public key spec");
            }
            ECPoint w = eCPublicKey2.getW();
            kb3.m13928a(w, eCPrivateKey.getParams().getCurve());
            PublicKey generatePublic = nb3.f27071j.m12953b("EC").generatePublic(new ECPublicKeySpec(w, eCPrivateKey.getParams()));
            KeyAgreement m12953b = nb3.f27069h.m12953b("ECDH");
            m12953b.init(eCPrivateKey);
            try {
                m12953b.doPhase(generatePublic, true);
                byte[] generateSecret = m12953b.generateSecret();
                EllipticCurve curve = eCPrivateKey.getParams().getCurve();
                BigInteger bigInteger2 = new BigInteger(1, generateSecret);
                if (bigInteger2.signum() == -1 || bigInteger2.compareTo(kb3.m13927b(curve)) >= 0) {
                    throw new GeneralSecurityException("shared secret is out of range");
                }
                BigInteger m13927b = kb3.m13927b(curve);
                BigInteger mod = bigInteger2.multiply(bigInteger2).add(curve.getA()).multiply(bigInteger2).add(curve.getB()).mod(m13927b);
                if (m13927b.signum() != 1) {
                    throw new InvalidAlgorithmParameterException("p must be positive");
                }
                BigInteger mod2 = mod.mod(m13927b);
                BigInteger bigInteger3 = BigInteger.ZERO;
                if (!mod2.equals(bigInteger3)) {
                    if (m13927b.testBit(0) && m13927b.testBit(1)) {
                        bigInteger = mod2.modPow(m13927b.add(BigInteger.ONE).shiftRight(2), m13927b);
                    } else if (m13927b.testBit(0) && !m13927b.testBit(1)) {
                        BigInteger bigInteger4 = BigInteger.ONE;
                        BigInteger shiftRight = m13927b.subtract(bigInteger4).shiftRight(1);
                        int i3 = 0;
                        while (true) {
                            BigInteger mod3 = bigInteger4.multiply(bigInteger4).subtract(mod2).mod(m13927b);
                            bigInteger3 = bigInteger4;
                            if (mod3.equals(BigInteger.ZERO)) {
                                break;
                            }
                            BigInteger modPow = mod3.modPow(shiftRight, m13927b);
                            BigInteger bigInteger5 = BigInteger.ONE;
                            if (modPow.add(bigInteger5).equals(m13927b)) {
                                BigInteger shiftRight2 = m13927b.add(bigInteger5).shiftRight(1);
                                BigInteger bigInteger6 = bigInteger4;
                                for (int bitLength = shiftRight2.bitLength() - 2; bitLength >= 0; bitLength--) {
                                    BigInteger multiply = bigInteger6.multiply(bigInteger5);
                                    BigInteger mod4 = bigInteger6.multiply(bigInteger6).add(bigInteger5.multiply(bigInteger5).mod(m13927b).multiply(mod3)).mod(m13927b);
                                    bigInteger5 = multiply.add(multiply).mod(m13927b);
                                    if (shiftRight2.testBit(bitLength)) {
                                        bigInteger6 = mod4.multiply(bigInteger4).add(bigInteger5.multiply(mod3)).mod(m13927b);
                                        bigInteger5 = bigInteger4.multiply(bigInteger5).add(mod4).mod(m13927b);
                                    } else {
                                        bigInteger6 = mod4;
                                    }
                                }
                                bigInteger = bigInteger6;
                            } else if (!modPow.equals(bigInteger5)) {
                                throw new InvalidAlgorithmParameterException("p is not prime");
                            } else {
                                bigInteger4 = bigInteger4.add(bigInteger5);
                                i3++;
                                if (i3 == 128 && !m13927b.isProbablePrime(80)) {
                                    throw new InvalidAlgorithmParameterException("p is not prime");
                                }
                            }
                        }
                    } else {
                        bigInteger = null;
                    }
                    bigInteger3 = bigInteger;
                    if (bigInteger != null) {
                        if (bigInteger.multiply(bigInteger).mod(m13927b).compareTo(mod2) != 0) {
                            throw new GeneralSecurityException("Could not find a modular square root");
                        }
                        bigInteger3 = bigInteger;
                    }
                }
                if (!bigInteger3.testBit(0)) {
                    m13927b.subtract(bigInteger3).mod(m13927b);
                }
                EllipticCurve curve2 = eCPublicKey.getParams().getCurve();
                ECPoint w2 = eCPublicKey.getW();
                kb3.m13928a(w2, curve2);
                int bitLength2 = (kb3.m13927b(curve2).subtract(BigInteger.ONE).bitLength() + 7) / 8;
                int i4 = i2 - 1;
                if (i4 == 0) {
                    int i5 = bitLength2 + bitLength2 + 1;
                    bArr3 = new byte[i5];
                    byte[] byteArray = w2.getAffineX().toByteArray();
                    byte[] byteArray2 = w2.getAffineY().toByteArray();
                    int length = byteArray2.length;
                    System.arraycopy(byteArray2, 0, bArr3, i5 - length, length);
                    int length2 = byteArray.length;
                    System.arraycopy(byteArray, 0, bArr3, (bitLength2 + 1) - length2, length2);
                    bArr3[0] = (byte) 4;
                } else if (i4 != 2) {
                    int i6 = bitLength2 + 1;
                    bArr3 = new byte[i6];
                    byte[] byteArray3 = w2.getAffineX().toByteArray();
                    int length3 = byteArray3.length;
                    System.arraycopy(byteArray3, 0, bArr3, i6 - length3, length3);
                    bArr3[0] = (byte) (true != w2.getAffineY().testBit(0) ? 2 : 3);
                } else {
                    int i7 = bitLength2 + bitLength2;
                    byte[] bArr4 = new byte[i7];
                    byte[] byteArray4 = w2.getAffineX().toByteArray();
                    int length4 = byteArray4.length;
                    byte[] bArr5 = byteArray4;
                    if (length4 > bitLength2) {
                        bArr5 = Arrays.copyOfRange(byteArray4, length4 - bitLength2, length4);
                    }
                    byte[] byteArray5 = w2.getAffineY().toByteArray();
                    int length5 = byteArray5.length;
                    byte[] bArr6 = byteArray5;
                    if (length5 > bitLength2) {
                        bArr6 = Arrays.copyOfRange(byteArray5, length5 - bitLength2, length5);
                    }
                    int length6 = bArr6.length;
                    System.arraycopy(bArr6, 0, bArr4, i7 - length6, length6);
                    int length7 = bArr5.length;
                    System.arraycopy(bArr5, 0, bArr4, bitLength2 - length7, length7);
                    bArr3 = bArr4;
                }
                int i8 = 1;
                byte[] m8471a = za3.m8471a(new byte[]{bArr3, generateSecret});
                Mac m12953b2 = nb3.f27066e.m12953b(str);
                if (i > m12953b2.getMacLength() * 255) {
                    throw new GeneralSecurityException("size too large");
                }
                if (bArr == null || bArr.length == 0) {
                    m12953b2.init(new SecretKeySpec(new byte[m12953b2.getMacLength()], str));
                } else {
                    m12953b2.init(new SecretKeySpec(bArr, str));
                }
                byte[] doFinal = m12953b2.doFinal(m8471a);
                byte[] bArr7 = new byte[i];
                m12953b2.init(new SecretKeySpec(doFinal, str));
                byte[] bArr8 = new byte[0];
                int i9 = 0;
                while (true) {
                    int i10 = i9;
                    m12953b2.update(bArr8);
                    m12953b2.update(bArr2);
                    m12953b2.update((byte) i8);
                    bArr8 = m12953b2.doFinal();
                    int length8 = bArr8.length;
                    int i11 = i10 + length8;
                    if (i11 >= i) {
                        System.arraycopy(bArr8, 0, bArr7, i10, i - i10);
                        return new ib3(bArr3, bArr7);
                    }
                    System.arraycopy(bArr8, 0, bArr7, i10, length8);
                    i8++;
                    i9 = i11;
                }
            } catch (IllegalStateException e) {
                throw new GeneralSecurityException(e.toString());
            }
        } catch (IllegalArgumentException | NullPointerException e2) {
            throw new GeneralSecurityException(e2.toString());
        }
    }
}
