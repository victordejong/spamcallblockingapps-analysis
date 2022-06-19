package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgbm.class */
public final class zzgbm {
    @Deprecated
    public static final zzggm zza;
    @Deprecated
    public static final zzggm zzb;
    @Deprecated
    public static final zzggm zzc;

    static {
        new zzgbl();
        zzggm zzc2 = zzggm.zzc();
        zza = zzc2;
        zzb = zzc2;
        zzc = zzc2;
        try {
            zza();
        } catch (GeneralSecurityException e) {
            throw new ExceptionInInitializerError(e);
        }
    }

    public static void zza() throws GeneralSecurityException {
        zzfza.zzn(new zzgbp());
        zzfza.zzm(new zzgbl(), true);
        if (zzgal.zzb()) {
            return;
        }
        zzfza.zzm(new zzgbi(), true);
    }
}
