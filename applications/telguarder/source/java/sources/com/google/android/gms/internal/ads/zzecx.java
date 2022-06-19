package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzecx.class */
public final class zzecx implements zzeaq {
    private static final ThreadLocal<Cipher> zzidh = new zzecw();
    private final SecretKey zzidi;

    public zzecx(byte[] bArr) throws GeneralSecurityException {
        zzeiv.zzfu(bArr.length);
        this.zzidi = new SecretKeySpec(bArr, "AES");
    }

    private static AlgorithmParameterSpec zzf(byte[] bArr, int i, int i2) throws GeneralSecurityException {
        try {
            Class.forName("javax.crypto.spec.GCMParameterSpec");
            return new GCMParameterSpec(128, bArr, 0, i2);
        } catch (ClassNotFoundException e) {
            if (!zzeiw.zzbfw()) {
                throw new GeneralSecurityException("cannot use AES-GCM: javax.crypto.spec.GCMParameterSpec not found");
            }
            return new IvParameterSpec(bArr, 0, i2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeaq
    public final byte[] zzc(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        if (bArr.length <= 2147483619) {
            byte[] bArr3 = new byte[bArr.length + 12 + 16];
            byte[] zzft = zzeiu.zzft(12);
            System.arraycopy(zzft, 0, bArr3, 0, 12);
            AlgorithmParameterSpec zzf = zzf(zzft, 0, zzft.length);
            ThreadLocal<Cipher> threadLocal = zzidh;
            threadLocal.get().init(1, this.zzidi, zzf);
            if (bArr2 != null && bArr2.length != 0) {
                threadLocal.get().updateAAD(bArr2);
            }
            int doFinal = threadLocal.get().doFinal(bArr, 0, bArr.length, bArr3, 12);
            if (doFinal != bArr.length + 16) {
                throw new GeneralSecurityException(String.format("encryption failed; GCM tag must be %s bytes, but got only %s bytes", 16, Integer.valueOf(doFinal - bArr.length)));
            }
            return bArr3;
        }
        throw new GeneralSecurityException("plaintext too long");
    }
}
