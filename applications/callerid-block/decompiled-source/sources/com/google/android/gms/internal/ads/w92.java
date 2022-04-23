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
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/w92.class */
public final class w92 {

    /* renamed from: a */
    private final ECPublicKey f8985a;

    public w92(ECPublicKey eCPublicKey) {
        this.f8985a = eCPublicKey;
    }

    /* JADX WARN: Type inference failed for: r0v185, types: [byte[], byte[][]] */
    /* renamed from: a */
    public final v92 m5103a(String str, byte[] bArr, byte[] bArr2, int i, int i2) {
        BigInteger bigInteger;
        byte[] bArr3;
        KeyPair c = x92.m4959c(this.f8985a.getParams());
        ECPublicKey eCPublicKey = (ECPublicKey) c.getPublic();
        ECPrivateKey eCPrivateKey = (ECPrivateKey) c.getPrivate();
        ECPublicKey eCPublicKey2 = this.f8985a;
        try {
            ECParameterSpec params = eCPublicKey2.getParams();
            ECParameterSpec params2 = eCPrivateKey.getParams();
            if (!params.getCurve().equals(params2.getCurve()) || !params.getGenerator().equals(params2.getGenerator()) || !params.getOrder().equals(params2.getOrder()) || params.getCofactor() != params2.getCofactor()) {
                throw new GeneralSecurityException("invalid public key spec");
            }
            ECPoint w = eCPublicKey2.getW();
            x92.m4961a(w, eCPrivateKey.getParams().getCurve());
            PublicKey generatePublic = z92.f9325i.m4654a("EC").generatePublic(new ECPublicKeySpec(w, eCPrivateKey.getParams()));
            KeyAgreement a = z92.f9323g.m4654a("ECDH");
            a.init(eCPrivateKey);
            try {
                a.doPhase(generatePublic, true);
                byte[] generateSecret = a.generateSecret();
                EllipticCurve curve = eCPrivateKey.getParams().getCurve();
                BigInteger bigInteger2 = new BigInteger(1, generateSecret);
                if (bigInteger2.signum() == -1 || bigInteger2.compareTo(x92.m4960b(curve)) >= 0) {
                    throw new GeneralSecurityException("shared secret is out of range");
                }
                BigInteger b = x92.m4960b(curve);
                BigInteger mod = bigInteger2.multiply(bigInteger2).add(curve.getA()).multiply(bigInteger2).add(curve.getB()).mod(b);
                if (b.signum() == 1) {
                    BigInteger mod2 = mod.mod(b);
                    BigInteger bigInteger3 = BigInteger.ZERO;
                    if (!mod2.equals(bigInteger3)) {
                        if (b.testBit(0) && b.testBit(1)) {
                            bigInteger = mod2.modPow(b.add(BigInteger.ONE).shiftRight(2), b);
                        } else if (b.testBit(0) && !b.testBit(1)) {
                            BigInteger bigInteger4 = BigInteger.ONE;
                            BigInteger shiftRight = b.subtract(bigInteger4).shiftRight(1);
                            int i3 = 0;
                            while (true) {
                                BigInteger mod3 = bigInteger4.multiply(bigInteger4).subtract(mod2).mod(b);
                                bigInteger3 = bigInteger4;
                                if (mod3.equals(BigInteger.ZERO)) {
                                    break;
                                }
                                BigInteger modPow = mod3.modPow(shiftRight, b);
                                BigInteger bigInteger5 = BigInteger.ONE;
                                if (modPow.add(bigInteger5).equals(b)) {
                                    BigInteger shiftRight2 = b.add(bigInteger5).shiftRight(1);
                                    BigInteger bigInteger6 = bigInteger4;
                                    for (int bitLength = shiftRight2.bitLength() - 2; bitLength >= 0; bitLength--) {
                                        BigInteger multiply = bigInteger6.multiply(bigInteger5);
                                        bigInteger6 = bigInteger6.multiply(bigInteger6).add(bigInteger5.multiply(bigInteger5).mod(b).multiply(mod3)).mod(b);
                                        bigInteger5 = multiply.add(multiply).mod(b);
                                        if (shiftRight2.testBit(bitLength)) {
                                            bigInteger6 = bigInteger6.multiply(bigInteger4).add(bigInteger5.multiply(mod3)).mod(b);
                                            bigInteger5 = bigInteger4.multiply(bigInteger5).add(bigInteger6).mod(b);
                                        }
                                    }
                                    bigInteger = bigInteger6;
                                } else if (modPow.equals(bigInteger5)) {
                                    bigInteger4 = bigInteger4.add(bigInteger5);
                                    i3++;
                                    if (i3 == 128 && !b.isProbablePrime(80)) {
                                        throw new InvalidAlgorithmParameterException("p is not prime");
                                    }
                                } else {
                                    throw new InvalidAlgorithmParameterException("p is not prime");
                                }
                            }
                        } else {
                            bigInteger = null;
                        }
                        bigInteger3 = bigInteger;
                        if (bigInteger != null) {
                            if (bigInteger.multiply(bigInteger).mod(b).compareTo(mod2) == 0) {
                                bigInteger3 = bigInteger;
                            } else {
                                throw new GeneralSecurityException("Could not find a modular square root");
                            }
                        }
                    }
                    if (!bigInteger3.testBit(0)) {
                        b.subtract(bigInteger3).mod(b);
                    }
                    EllipticCurve curve2 = eCPublicKey.getParams().getCurve();
                    ECPoint w2 = eCPublicKey.getW();
                    x92.m4961a(w2, curve2);
                    int bitLength2 = (x92.m4960b(curve2).subtract(BigInteger.ONE).bitLength() + 7) / 8;
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
                    byte[] a2 = m92.m6592a(new byte[]{bArr3, generateSecret});
                    Mac a3 = z92.f9322f.m4654a(str);
                    if (i <= a3.getMacLength() * 255) {
                        if (bArr == null || bArr.length == 0) {
                            a3.init(new SecretKeySpec(new byte[a3.getMacLength()], str));
                        } else {
                            a3.init(new SecretKeySpec(bArr, str));
                        }
                        byte[] doFinal = a3.doFinal(a2);
                        byte[] bArr7 = new byte[i];
                        a3.init(new SecretKeySpec(doFinal, str));
                        byte[] bArr8 = new byte[0];
                        int i9 = 0;
                        while (true) {
                            a3.update(bArr8);
                            a3.update(bArr2);
                            a3.update((byte) i8);
                            bArr8 = a3.doFinal();
                            int length8 = bArr8.length;
                            int i10 = i9 + length8;
                            if (i10 < i) {
                                System.arraycopy(bArr8, 0, bArr7, i9, length8);
                                i8++;
                                i9 = i10;
                            } else {
                                System.arraycopy(bArr8, 0, bArr7, i9, i - i9);
                                return new v92(bArr3, bArr7);
                            }
                        }
                    } else {
                        throw new GeneralSecurityException("size too large");
                    }
                } else {
                    throw new InvalidAlgorithmParameterException("p must be positive");
                }
            } catch (IllegalStateException e) {
                throw new GeneralSecurityException(e.toString());
            }
        } catch (IllegalArgumentException | NullPointerException e2) {
            throw new GeneralSecurityException(e2.toString());
        }
    }
}
