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
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzghm.class */
public final class zzghm {
    private final ECPublicKey zza;

    public zzghm(ECPublicKey eCPublicKey) {
        this.zza = eCPublicKey;
    }

    /* JADX WARN: Type inference failed for: r0v185, types: [byte[], byte[][]] */
    public final zzghl zza(String str, byte[] bArr, byte[] bArr2, int i, int i2) throws GeneralSecurityException {
        BigInteger bigInteger;
        byte[] bArr3;
        KeyPair zzb = zzghn.zzb(this.zza.getParams());
        ECPublicKey eCPublicKey = (ECPublicKey) zzb.getPublic();
        ECPrivateKey eCPrivateKey = (ECPrivateKey) zzb.getPrivate();
        ECPublicKey eCPublicKey2 = this.zza;
        try {
            ECParameterSpec params = eCPublicKey2.getParams();
            ECParameterSpec params2 = eCPrivateKey.getParams();
            if (!params.getCurve().equals(params2.getCurve()) || !params.getGenerator().equals(params2.getGenerator()) || !params.getOrder().equals(params2.getOrder()) || params.getCofactor() != params2.getCofactor()) {
                throw new GeneralSecurityException("invalid public key spec");
            }
            ECPoint w = eCPublicKey2.getW();
            zzghn.zzc(w, eCPrivateKey.getParams().getCurve());
            PublicKey generatePublic = zzghp.zzg.zza("EC").generatePublic(new ECPublicKeySpec(w, eCPrivateKey.getParams()));
            KeyAgreement zza = zzghp.zze.zza("ECDH");
            zza.init(eCPrivateKey);
            try {
                zza.doPhase(generatePublic, true);
                byte[] generateSecret = zza.generateSecret();
                EllipticCurve curve = eCPrivateKey.getParams().getCurve();
                BigInteger bigInteger2 = new BigInteger(1, generateSecret);
                if (bigInteger2.signum() == -1 || bigInteger2.compareTo(zzghn.zza(curve)) >= 0) {
                    throw new GeneralSecurityException("shared secret is out of range");
                }
                BigInteger zza2 = zzghn.zza(curve);
                BigInteger mod = bigInteger2.multiply(bigInteger2).add(curve.getA()).multiply(bigInteger2).add(curve.getB()).mod(zza2);
                if (zza2.signum() != 1) {
                    throw new InvalidAlgorithmParameterException("p must be positive");
                }
                BigInteger mod2 = mod.mod(zza2);
                BigInteger bigInteger3 = BigInteger.ZERO;
                if (!mod2.equals(bigInteger3)) {
                    if (zza2.testBit(0) && zza2.testBit(1)) {
                        bigInteger = mod2.modPow(zza2.add(BigInteger.ONE).shiftRight(2), zza2);
                    } else if (zza2.testBit(0) && !zza2.testBit(1)) {
                        BigInteger bigInteger4 = BigInteger.ONE;
                        BigInteger shiftRight = zza2.subtract(bigInteger4).shiftRight(1);
                        int i3 = 0;
                        while (true) {
                            BigInteger mod3 = bigInteger4.multiply(bigInteger4).subtract(mod2).mod(zza2);
                            bigInteger3 = bigInteger4;
                            if (mod3.equals(BigInteger.ZERO)) {
                                break;
                            }
                            BigInteger modPow = mod3.modPow(shiftRight, zza2);
                            BigInteger bigInteger5 = BigInteger.ONE;
                            if (modPow.add(bigInteger5).equals(zza2)) {
                                BigInteger shiftRight2 = zza2.add(bigInteger5).shiftRight(1);
                                int bitLength = shiftRight2.bitLength() - 2;
                                BigInteger bigInteger6 = bigInteger4;
                                while (bitLength >= 0) {
                                    BigInteger multiply = bigInteger6.multiply(bigInteger5);
                                    BigInteger mod4 = bigInteger6.multiply(bigInteger6).add(bigInteger5.multiply(bigInteger5).mod(zza2).multiply(mod3)).mod(zza2);
                                    BigInteger mod5 = multiply.add(multiply).mod(zza2);
                                    if (shiftRight2.testBit(bitLength)) {
                                        BigInteger mod6 = mod4.multiply(bigInteger4).add(mod5.multiply(mod3)).mod(zza2);
                                        mod5 = bigInteger4.multiply(mod5).add(mod4).mod(zza2);
                                        mod4 = mod6;
                                    }
                                    bigInteger5 = mod5;
                                    bitLength--;
                                    bigInteger6 = mod4;
                                }
                                bigInteger = bigInteger6;
                            } else if (!modPow.equals(bigInteger5)) {
                                throw new InvalidAlgorithmParameterException("p is not prime");
                            } else {
                                bigInteger4 = bigInteger4.add(bigInteger5);
                                i3++;
                                if (i3 == 128 && !zza2.isProbablePrime(80)) {
                                    throw new InvalidAlgorithmParameterException("p is not prime");
                                }
                            }
                        }
                    } else {
                        bigInteger = null;
                    }
                    bigInteger3 = bigInteger;
                    if (bigInteger != null) {
                        if (bigInteger.multiply(bigInteger).mod(zza2).compareTo(mod2) != 0) {
                            throw new GeneralSecurityException("Could not find a modular square root");
                        }
                        bigInteger3 = bigInteger;
                    }
                }
                if (!bigInteger3.testBit(0)) {
                    zza2.subtract(bigInteger3).mod(zza2);
                }
                EllipticCurve curve2 = eCPublicKey.getParams().getCurve();
                ECPoint w2 = eCPublicKey.getW();
                zzghn.zzc(w2, curve2);
                int bitLength2 = (zzghn.zza(curve2).subtract(BigInteger.ONE).bitLength() + 7) / 8;
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
                byte[] zzb2 = zzghc.zzb(new byte[]{bArr3, generateSecret});
                Mac zza3 = zzghp.zzb.zza(str);
                if (i > zza3.getMacLength() * 255) {
                    throw new GeneralSecurityException("size too large");
                }
                if (bArr == null || bArr.length == 0) {
                    zza3.init(new SecretKeySpec(new byte[zza3.getMacLength()], str));
                } else {
                    zza3.init(new SecretKeySpec(bArr, str));
                }
                byte[] doFinal = zza3.doFinal(zzb2);
                byte[] bArr7 = new byte[i];
                zza3.init(new SecretKeySpec(doFinal, str));
                byte[] bArr8 = new byte[0];
                int i9 = 0;
                while (true) {
                    int i10 = i9;
                    zza3.update(bArr8);
                    zza3.update(bArr2);
                    zza3.update((byte) i8);
                    bArr8 = zza3.doFinal();
                    int length8 = bArr8.length;
                    int i11 = i10 + length8;
                    if (i11 >= i) {
                        System.arraycopy(bArr8, 0, bArr7, i10, i - i10);
                        return new zzghl(bArr3, bArr7);
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
