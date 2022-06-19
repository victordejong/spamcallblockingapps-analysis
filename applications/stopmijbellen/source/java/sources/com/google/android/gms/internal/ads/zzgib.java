package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.util.Arrays;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgib.class */
public final class zzgib implements zzgbq {
    private final SecretKey zza;
    private final byte[] zzb;
    private final byte[] zzc;

    public zzgib(byte[] bArr) throws GeneralSecurityException {
        zzgii.zza(bArr.length);
        SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
        this.zza = secretKeySpec;
        Cipher zzb = zzb();
        zzb.init(1, secretKeySpec);
        byte[] zzb2 = zzghb.zzb(zzb.doFinal(new byte[16]));
        this.zzb = zzb2;
        this.zzc = zzghb.zzb(zzb2);
    }

    private static Cipher zzb() throws GeneralSecurityException {
        if (zzgak.zza(1)) {
            return zzghp.zza.zza("AES/ECB/NoPadding");
        }
        throw new GeneralSecurityException("Can not use AES-CMAC in FIPS-mode.");
    }

    @Override // com.google.android.gms.internal.ads.zzgbq
    public final byte[] zza(byte[] bArr, int i) throws GeneralSecurityException {
        if (i <= 16) {
            Cipher zzb = zzb();
            zzb.init(1, this.zza);
            int length = bArr.length;
            int max = Math.max(1, (int) Math.ceil(length / 16.0d));
            byte[] zzd = max * 16 == length ? zzghc.zzd(bArr, (max - 1) * 16, this.zzb, 0, 16) : zzghc.zzc(zzghb.zza(Arrays.copyOfRange(bArr, (max - 1) * 16, length)), this.zzc);
            byte[] bArr2 = new byte[16];
            for (int i2 = 0; i2 < max - 1; i2++) {
                bArr2 = zzb.doFinal(zzghc.zzd(bArr2, 0, bArr, i2 * 16, 16));
            }
            return Arrays.copyOf(zzb.doFinal(zzghc.zzc(zzd, bArr2)), i);
        }
        throw new InvalidAlgorithmParameterException("outputLength too large, max is 16 bytes");
    }
}
