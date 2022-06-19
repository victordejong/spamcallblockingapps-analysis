package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfyn.class */
public final class zzfyn {
    @Deprecated
    public static final zzfyj zza(byte[] bArr) throws GeneralSecurityException {
        try {
            zzgfq zze = zzgfq.zze(bArr, zzgjx.zza());
            for (zzgfp zzgfpVar : zze.zzf()) {
                if (zzgfpVar.zzc().zzi() == 2 || zzgfpVar.zzc().zzi() == 3 || zzgfpVar.zzc().zzi() == 4) {
                    throw new GeneralSecurityException("keyset contains secret key material");
                }
            }
            return zzfyj.zza(zze);
        } catch (zzgkx e) {
            throw new GeneralSecurityException("invalid keyset");
        }
    }
}
