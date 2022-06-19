package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgcg.class */
public final class zzgcg implements zzgdl {
    private static final ThreadLocal<Cipher> zza = new zzgcf();
    private final SecretKeySpec zzb;
    private final int zzc;
    private final int zzd;

    public zzgcg(byte[] bArr, int i) throws GeneralSecurityException {
        if (zzfvw.zza(2)) {
            zzgdu.zza(bArr.length);
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

    @Override // com.google.android.gms.internal.ads.zzgdl
    public final byte[] zza(byte[] bArr) throws GeneralSecurityException {
        int length = bArr.length;
        int i = this.zzc;
        int i2 = Integer.MAX_VALUE - i;
        if (length <= i2) {
            byte[] bArr2 = new byte[i + length];
            byte[] zza2 = zzgds.zza(i);
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
        throw new GeneralSecurityException(C22128a.m8690L1(43, "plaintext length can not exceed ", i2));
    }
}
