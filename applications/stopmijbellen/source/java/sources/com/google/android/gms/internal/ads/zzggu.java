package com.google.android.gms.internal.ads;

import android.support.p012v4.media.C0082b;
import com.google.android.gms.common.api.Api;
import java.security.GeneralSecurityException;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzggu.class */
public final class zzggu implements zzghz {
    private static final ThreadLocal<Cipher> zza = new zzggt();
    private final SecretKeySpec zzb;
    private final int zzc;
    private final int zzd;

    public zzggu(byte[] bArr, int i) throws GeneralSecurityException {
        if (zzgak.zza(2)) {
            zzgii.zza(bArr.length);
            this.zzb = new SecretKeySpec(bArr, "AES");
            int blockSize = zza.get().getBlockSize();
            this.zzd = blockSize;
            if (i < 12 || i > blockSize) {
                throw new GeneralSecurityException("invalid IV size");
            }
            this.zzc = i;
            return;
        }
        throw new GeneralSecurityException("Can not use AES-CTR in FIPS-mode, as BoringCrypto module is not available.");
    }

    @Override // com.google.android.gms.internal.ads.zzghz
    public final byte[] zza(byte[] bArr) throws GeneralSecurityException {
        int length = bArr.length;
        int i = this.zzc;
        int i2 = Api.BaseClientBuilder.API_PRIORITY_OTHER - i;
        if (length <= i2) {
            byte[] bArr2 = new byte[i + length];
            byte[] zza2 = zzgig.zza(i);
            System.arraycopy(zza2, 0, bArr2, 0, this.zzc);
            int i3 = this.zzc;
            Cipher cipher = zza.get();
            byte[] bArr3 = new byte[this.zzd];
            System.arraycopy(zza2, 0, bArr3, 0, this.zzc);
            cipher.init(1, this.zzb, new IvParameterSpec(bArr3));
            if (cipher.doFinal(bArr, 0, length, bArr2, i3) != length) {
                throw new GeneralSecurityException("stored output's length does not match input's length");
            }
            return bArr2;
        }
        throw new GeneralSecurityException(C0082b.m8758d(43, "plaintext length can not exceed ", i2));
    }
}
