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
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzehv.class */
public final class zzehv {
    private ECPublicKey zzijp;

    public zzehv(ECPublicKey eCPublicKey) {
        this.zzijp = eCPublicKey;
    }

    /* JADX WARN: Type inference failed for: r0v44, types: [byte[], byte[][]] */
    public final zzehy zza(String str, byte[] bArr, byte[] bArr2, int i, zzeic zzeicVar) throws GeneralSecurityException {
        byte[] bArr3;
        KeyPair zza = zzehx.zza(this.zzijp.getParams());
        ECPublicKey eCPublicKey = (ECPublicKey) zza.getPublic();
        ECPrivateKey eCPrivateKey = (ECPrivateKey) zza.getPrivate();
        ECPublicKey eCPublicKey2 = this.zzijp;
        try {
            ECParameterSpec params = eCPublicKey2.getParams();
            ECParameterSpec params2 = eCPrivateKey.getParams();
            int i2 = 1;
            if (!(params.getCurve().equals(params2.getCurve()) && params.getGenerator().equals(params2.getGenerator()) && params.getOrder().equals(params2.getOrder()) && params.getCofactor() == params2.getCofactor())) {
                throw new GeneralSecurityException("invalid public key spec");
            }
            byte[] zza2 = zzehx.zza(eCPrivateKey, eCPublicKey2.getW());
            EllipticCurve curve = eCPublicKey.getParams().getCurve();
            ECPoint w = eCPublicKey.getW();
            zzehx.zza(w, curve);
            int bitLength = (zzehx.zza(curve).subtract(BigInteger.ONE).bitLength() + 7) / 8;
            int i3 = zzeia.zzijw[zzeicVar.ordinal()];
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
                if (i3 != 3) {
                    String valueOf = String.valueOf(zzeicVar);
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 15);
                    sb.append("invalid format:");
                    sb.append(valueOf);
                    throw new GeneralSecurityException(sb.toString());
                }
                int i6 = bitLength + 1;
                bArr3 = new byte[i6];
                byte[] byteArray3 = w.getAffineX().toByteArray();
                System.arraycopy(byteArray3, 0, bArr3, i6 - byteArray3.length, byteArray3.length);
                if (!w.getAffineY().testBit(0)) {
                    i5 = 2;
                }
                bArr3[0] = (byte) i5;
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
            byte[] zza3 = zzeho.zza(new byte[]{bArr3, zza2});
            Mac zzhw = zzeie.zzikh.zzhw(str);
            if (i > zzhw.getMacLength() * 255) {
                throw new GeneralSecurityException("size too large");
            }
            if (bArr == null || bArr.length == 0) {
                zzhw.init(new SecretKeySpec(new byte[zzhw.getMacLength()], str));
            } else {
                zzhw.init(new SecretKeySpec(bArr, str));
            }
            byte[] doFinal = zzhw.doFinal(zza3);
            byte[] bArr7 = new byte[i];
            zzhw.init(new SecretKeySpec(doFinal, str));
            byte[] bArr8 = new byte[0];
            int i8 = 0;
            while (true) {
                zzhw.update(bArr8);
                zzhw.update(bArr2);
                zzhw.update((byte) i2);
                bArr8 = zzhw.doFinal();
                if (bArr8.length + i8 >= i) {
                    System.arraycopy(bArr8, 0, bArr7, i8, i - i8);
                    return new zzehy(bArr3, bArr7);
                }
                System.arraycopy(bArr8, 0, bArr7, i8, bArr8.length);
                i8 += bArr8.length;
                i2++;
            }
        } catch (IllegalArgumentException | NullPointerException e) {
            throw new GeneralSecurityException(e.toString());
        }
    }
}
