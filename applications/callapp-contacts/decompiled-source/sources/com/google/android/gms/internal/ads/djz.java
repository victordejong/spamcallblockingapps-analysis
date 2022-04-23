package com.google.android.gms.internal.ads;

import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.security.KeyPair;
import java.security.interfaces.ECPrivateKey;
import java.security.interfaces.ECPublicKey;
import java.security.spec.ECParameterSpec;
import java.security.spec.ECPoint;
import java.security.spec.EllipticCurve;
import java.util.Arrays;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/djz.class */
public final class djz {

    /* renamed from: a  reason: collision with root package name */
    private ECPublicKey f26883a;

    public djz(ECPublicKey eCPublicKey) {
        this.f26883a = eCPublicKey;
    }

    /* JADX WARN: Type inference failed for: r0v44, types: [byte[], byte[][]] */
    public final dkc a(String str, byte[] bArr, byte[] bArr2, int i, dkh dkhVar) throws GeneralSecurityException {
        byte[] bArr3;
        KeyPair a2 = dkb.a(this.f26883a.getParams());
        ECPublicKey eCPublicKey = (ECPublicKey) a2.getPublic();
        ECPrivateKey eCPrivateKey = (ECPrivateKey) a2.getPrivate();
        ECPublicKey eCPublicKey2 = this.f26883a;
        try {
            ECParameterSpec params = eCPublicKey2.getParams();
            ECParameterSpec params2 = eCPrivateKey.getParams();
            int i2 = 1;
            if (params.getCurve().equals(params2.getCurve()) && params.getGenerator().equals(params2.getGenerator()) && params.getOrder().equals(params2.getOrder()) && params.getCofactor() == params2.getCofactor()) {
                byte[] a3 = dkb.a(eCPrivateKey, eCPublicKey2.getW());
                EllipticCurve curve = eCPublicKey.getParams().getCurve();
                ECPoint w = eCPublicKey.getW();
                dkb.a(w, curve);
                int bitLength = (dkb.a(curve).subtract(BigInteger.ONE).bitLength() + 7) / 8;
                int i3 = dke.f26887a[dkhVar.ordinal()];
                if (i3 == 1) {
                    int i4 = (bitLength * 2) + 1;
                    bArr3 = new byte[i4];
                    byte[] byteArray = w.getAffineX().toByteArray();
                    byte[] byteArray2 = w.getAffineY().toByteArray();
                    System.arraycopy(byteArray2, 0, bArr3, i4 - byteArray2.length, byteArray2.length);
                    System.arraycopy(byteArray, 0, bArr3, (bitLength + 1) - byteArray.length, byteArray.length);
                    bArr3[0] = (byte) 4;
                } else if (i3 != 2) {
                    int i5 = 3;
                    if (i3 == 3) {
                        int i6 = bitLength + 1;
                        bArr3 = new byte[i6];
                        byte[] byteArray3 = w.getAffineX().toByteArray();
                        System.arraycopy(byteArray3, 0, bArr3, i6 - byteArray3.length, byteArray3.length);
                        if (!w.getAffineY().testBit(0)) {
                            i5 = 2;
                        }
                        bArr3[0] = (byte) i5;
                    } else {
                        String valueOf = String.valueOf(dkhVar);
                        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 15);
                        sb.append("invalid format:");
                        sb.append(valueOf);
                        throw new GeneralSecurityException(sb.toString());
                    }
                } else {
                    int i7 = bitLength * 2;
                    byte[] bArr4 = new byte[i7];
                    byte[] byteArray4 = w.getAffineX().toByteArray();
                    byte[] bArr5 = byteArray4;
                    if (byteArray4.length > bitLength) {
                        bArr5 = Arrays.copyOfRange(byteArray4, byteArray4.length - bitLength, byteArray4.length);
                    }
                    byte[] byteArray5 = w.getAffineY().toByteArray();
                    byte[] bArr6 = byteArray5;
                    if (byteArray5.length > bitLength) {
                        bArr6 = Arrays.copyOfRange(byteArray5, byteArray5.length - bitLength, byteArray5.length);
                    }
                    System.arraycopy(bArr6, 0, bArr4, i7 - bArr6.length, bArr6.length);
                    System.arraycopy(bArr5, 0, bArr4, bitLength - bArr5.length, bArr5.length);
                    bArr3 = bArr4;
                }
                byte[] a4 = djs.a(new byte[]{bArr3, a3});
                Mac a5 = dkj.f26897b.a(str);
                if (i <= a5.getMacLength() * 255) {
                    if (bArr == null || bArr.length == 0) {
                        a5.init(new SecretKeySpec(new byte[a5.getMacLength()], str));
                    } else {
                        a5.init(new SecretKeySpec(bArr, str));
                    }
                    byte[] doFinal = a5.doFinal(a4);
                    byte[] bArr7 = new byte[i];
                    a5.init(new SecretKeySpec(doFinal, str));
                    byte[] bArr8 = new byte[0];
                    int i8 = 0;
                    while (true) {
                        a5.update(bArr8);
                        a5.update(bArr2);
                        a5.update((byte) i2);
                        bArr8 = a5.doFinal();
                        if (bArr8.length + i8 < i) {
                            System.arraycopy(bArr8, 0, bArr7, i8, bArr8.length);
                            i8 += bArr8.length;
                            i2++;
                        } else {
                            System.arraycopy(bArr8, 0, bArr7, i8, i - i8);
                            return new dkc(bArr3, bArr7);
                        }
                    }
                } else {
                    throw new GeneralSecurityException("size too large");
                }
            } else {
                throw new GeneralSecurityException("invalid public key spec");
            }
        } catch (IllegalArgumentException | NullPointerException e) {
            throw new GeneralSecurityException(e.toString());
        }
    }
}
