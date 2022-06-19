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

    /* renamed from: a */
    private ECPublicKey f47133a;

    public djz(ECPublicKey eCPublicKey) {
        this.f47133a = eCPublicKey;
    }

    /* JADX WARN: Type inference failed for: r0v44, types: [byte[], byte[][]] */
    /* renamed from: a */
    public final dkc m16549a(String str, byte[] bArr, byte[] bArr2, int i, dkh dkhVar) throws GeneralSecurityException {
        byte[] bArr3;
        KeyPair m16545a = dkb.m16545a(this.f47133a.getParams());
        ECPublicKey eCPublicKey = (ECPublicKey) m16545a.getPublic();
        ECPrivateKey eCPrivateKey = (ECPrivateKey) m16545a.getPrivate();
        ECPublicKey eCPublicKey2 = this.f47133a;
        try {
            ECParameterSpec params = eCPublicKey2.getParams();
            ECParameterSpec params2 = eCPrivateKey.getParams();
            if (!(params.getCurve().equals(params2.getCurve()) && params.getGenerator().equals(params2.getGenerator()) && params.getOrder().equals(params2.getOrder()) && params.getCofactor() == params2.getCofactor())) {
                throw new GeneralSecurityException("invalid public key spec");
            }
            byte[] m16546a = dkb.m16546a(eCPrivateKey, eCPublicKey2.getW());
            EllipticCurve curve = eCPublicKey.getParams().getCurve();
            ECPoint w = eCPublicKey.getW();
            dkb.m16544a(w, curve);
            int bitLength = (dkb.m16543a(curve).subtract(BigInteger.ONE).bitLength() + 7) / 8;
            int i2 = dke.f47137a[dkhVar.ordinal()];
            if (i2 == 1) {
                int i3 = (bitLength * 2) + 1;
                bArr3 = new byte[i3];
                byte[] byteArray = w.getAffineX().toByteArray();
                byte[] byteArray2 = w.getAffineY().toByteArray();
                System.arraycopy(byteArray2, 0, bArr3, i3 - byteArray2.length, byteArray2.length);
                System.arraycopy(byteArray, 0, bArr3, (bitLength + 1) - byteArray.length, byteArray.length);
                bArr3[0] = (byte) 4;
            } else if (i2 != 2) {
                int i4 = 3;
                if (i2 != 3) {
                    String valueOf = String.valueOf(dkhVar);
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 15);
                    sb.append("invalid format:");
                    sb.append(valueOf);
                    throw new GeneralSecurityException(sb.toString());
                }
                int i5 = bitLength + 1;
                bArr3 = new byte[i5];
                byte[] byteArray3 = w.getAffineX().toByteArray();
                System.arraycopy(byteArray3, 0, bArr3, i5 - byteArray3.length, byteArray3.length);
                if (!w.getAffineY().testBit(0)) {
                    i4 = 2;
                }
                bArr3[0] = (byte) i4;
            } else {
                int i6 = bitLength * 2;
                byte[] bArr4 = new byte[i6];
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
                System.arraycopy(bArr6, 0, bArr4, i6 - bArr6.length, bArr6.length);
                System.arraycopy(bArr5, 0, bArr4, bitLength - bArr5.length, bArr5.length);
                bArr3 = bArr4;
            }
            byte[] m16560a = djs.m16560a(new byte[]{bArr3, m16546a});
            Mac m16538a = dkj.f47147b.m16538a(str);
            if (i > m16538a.getMacLength() * 255) {
                throw new GeneralSecurityException("size too large");
            }
            if (bArr == null || bArr.length == 0) {
                m16538a.init(new SecretKeySpec(new byte[m16538a.getMacLength()], str));
            } else {
                m16538a.init(new SecretKeySpec(bArr, str));
            }
            byte[] doFinal = m16538a.doFinal(m16560a);
            byte[] bArr7 = new byte[i];
            m16538a.init(new SecretKeySpec(doFinal, str));
            byte[] bArr8 = new byte[0];
            int i7 = 0;
            int i8 = 1;
            while (true) {
                m16538a.update(bArr8);
                m16538a.update(bArr2);
                m16538a.update((byte) i8);
                bArr8 = m16538a.doFinal();
                if (bArr8.length + i7 >= i) {
                    System.arraycopy(bArr8, 0, bArr7, i7, i - i7);
                    return new dkc(bArr3, bArr7);
                }
                System.arraycopy(bArr8, 0, bArr7, i7, bArr8.length);
                i7 += bArr8.length;
                i8++;
            }
        } catch (IllegalArgumentException | NullPointerException e) {
            throw new GeneralSecurityException(e.toString());
        }
    }
}
