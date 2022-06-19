package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgax.class */
public final class zzgax {
    @Deprecated
    public static final zzggm zza = zzggm.zzc();
    @Deprecated
    public static final zzggm zzb = zzggm.zzc();
    @Deprecated
    public static final zzggm zzc = zzggm.zzc();

    static {
        new zzgaw();
        new zzgau();
        try {
            zzfza.zzn(new zzgaz());
            zzfza.zzn(new zzgbc());
            zzfzc.zza();
            if (zzgal.zzb()) {
                return;
            }
            zzfza.zzk(new zzgau(), new zzgaw(), true);
        } catch (GeneralSecurityException e) {
            throw new ExceptionInInitializerError(e);
        }
    }
}
