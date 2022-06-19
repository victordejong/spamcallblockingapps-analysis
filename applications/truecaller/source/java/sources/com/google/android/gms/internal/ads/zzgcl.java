package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgcl.class */
public final class zzgcl implements zzftg {
    private static final ThreadLocal<Cipher> zza = new zzgck();
    private final SecretKey zzb;

    public zzgcl(byte[] bArr) throws GeneralSecurityException {
        if (zzfvw.zza(2)) {
            zzgdu.zza(bArr.length);
            this.zzb = new SecretKeySpec(bArr, "AES");
            return;
        }
        throw new GeneralSecurityException("Can not use AES-GCM in FIPS-mode, as BoringCrypto module is not available.");
    }

    @Override // com.google.android.gms.internal.ads.zzftg
    public final byte[] zza(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        int length = bArr.length;
        if (length <= 2147483619) {
            byte[] bArr3 = new byte[length + 28];
            byte[] zza2 = zzgds.zza(12);
            System.arraycopy(zza2, 0, bArr3, 0, 12);
            int length2 = zza2.length;
            IvParameterSpec gCMParameterSpec = (!zzgdt.zza() || zzgdt.zzb() > 19) ? new GCMParameterSpec(128, zza2, 0, length2) : new IvParameterSpec(zza2, 0, length2);
            ThreadLocal<Cipher> threadLocal = zza;
            threadLocal.get().init(1, this.zzb, gCMParameterSpec);
            int doFinal = threadLocal.get().doFinal(bArr, 0, length, bArr3, 12);
            if (doFinal != length + 16) {
                throw new GeneralSecurityException(String.format("encryption failed; GCM tag must be %s bytes, but got only %s bytes", 16, Integer.valueOf(doFinal - length)));
            }
            return bArr3;
        }
        throw new GeneralSecurityException("plaintext too long");
    }
}
