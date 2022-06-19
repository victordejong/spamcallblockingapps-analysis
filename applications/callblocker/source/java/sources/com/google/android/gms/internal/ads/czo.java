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
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/czo.class */
public final class czo {

    /* renamed from: a */
    private ECPublicKey f13865a;

    public czo(ECPublicKey eCPublicKey) {
        this.f13865a = eCPublicKey;
    }

    /* JADX WARN: Type inference failed for: r0v75, types: [byte[], byte[][]] */
    /* renamed from: a */
    public final czs m10291a(String str, byte[] bArr, byte[] bArr2, int i, czw czwVar) {
        byte[] bArr3;
        KeyPair m10286a = czr.m10286a(this.f13865a.getParams());
        ECPublicKey eCPublicKey = (ECPublicKey) m10286a.getPublic();
        ECPrivateKey eCPrivateKey = (ECPrivateKey) m10286a.getPrivate();
        ECPublicKey eCPublicKey2 = this.f13865a;
        try {
            ECParameterSpec params = eCPublicKey2.getParams();
            ECParameterSpec params2 = eCPrivateKey.getParams();
            if (!(params.getCurve().equals(params2.getCurve()) && params.getGenerator().equals(params2.getGenerator()) && params.getOrder().equals(params2.getOrder()) && params.getCofactor() == params2.getCofactor())) {
                throw new GeneralSecurityException("invalid public key spec");
            }
            byte[] m10287a = czr.m10287a(eCPrivateKey, eCPublicKey2.getW());
            EllipticCurve curve = eCPublicKey.getParams().getCurve();
            ECPoint w = eCPublicKey.getW();
            czr.m10285a(w, curve);
            int bitLength = (czr.m10284a(curve).subtract(BigInteger.ONE).bitLength() + 7) / 8;
            switch (czu.f13875a[czwVar.ordinal()]) {
                case 1:
                    bArr3 = new byte[(bitLength * 2) + 1];
                    byte[] byteArray = w.getAffineX().toByteArray();
                    byte[] byteArray2 = w.getAffineY().toByteArray();
                    System.arraycopy(byteArray2, 0, bArr3, ((bitLength * 2) + 1) - byteArray2.length, byteArray2.length);
                    System.arraycopy(byteArray, 0, bArr3, (bitLength + 1) - byteArray.length, byteArray.length);
                    bArr3[0] = (byte) 4;
                    break;
                case 2:
                    byte[] bArr4 = new byte[bitLength * 2];
                    byte[] byteArray3 = w.getAffineX().toByteArray();
                    byte[] bArr5 = byteArray3;
                    if (byteArray3.length > bitLength) {
                        bArr5 = Arrays.copyOfRange(byteArray3, byteArray3.length - bitLength, byteArray3.length);
                    }
                    byte[] byteArray4 = w.getAffineY().toByteArray();
                    byte[] bArr6 = byteArray4;
                    if (byteArray4.length > bitLength) {
                        bArr6 = Arrays.copyOfRange(byteArray4, byteArray4.length - bitLength, byteArray4.length);
                    }
                    System.arraycopy(bArr6, 0, bArr4, (bitLength * 2) - bArr6.length, bArr6.length);
                    System.arraycopy(bArr5, 0, bArr4, bitLength - bArr5.length, bArr5.length);
                    bArr3 = bArr4;
                    break;
                case 3:
                    bArr3 = new byte[bitLength + 1];
                    byte[] byteArray5 = w.getAffineX().toByteArray();
                    System.arraycopy(byteArray5, 0, bArr3, (bitLength + 1) - byteArray5.length, byteArray5.length);
                    bArr3[0] = (byte) (w.getAffineY().testBit(0) ? 3 : 2);
                    break;
                default:
                    String valueOf = String.valueOf(czwVar);
                    throw new GeneralSecurityException(new StringBuilder(String.valueOf(valueOf).length() + 15).append("invalid format:").append(valueOf).toString());
            }
            byte[] m10302a = czh.m10302a(new byte[]{bArr3, m10287a});
            Mac m10281a = czy.f13885b.m10281a(str);
            if (i > m10281a.getMacLength() * 255) {
                throw new GeneralSecurityException("size too large");
            }
            if (bArr == null || bArr.length == 0) {
                m10281a.init(new SecretKeySpec(new byte[m10281a.getMacLength()], str));
            } else {
                m10281a.init(new SecretKeySpec(bArr, str));
            }
            byte[] doFinal = m10281a.doFinal(m10302a);
            byte[] bArr7 = new byte[i];
            m10281a.init(new SecretKeySpec(doFinal, str));
            byte[] bArr8 = new byte[0];
            int i2 = 1;
            int i3 = 0;
            while (true) {
                m10281a.update(bArr8);
                m10281a.update(bArr2);
                m10281a.update((byte) i2);
                bArr8 = m10281a.doFinal();
                if (bArr8.length + i3 >= i) {
                    System.arraycopy(bArr8, 0, bArr7, i3, i - i3);
                    return new czs(bArr3, bArr7);
                }
                System.arraycopy(bArr8, 0, bArr7, i3, bArr8.length);
                i3 += bArr8.length;
                i2++;
            }
        } catch (IllegalArgumentException | NullPointerException e) {
            throw new GeneralSecurityException(e.toString());
        }
    }
}
