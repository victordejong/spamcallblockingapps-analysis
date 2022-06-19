package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgap.class */
public final class zzgap {
    public static final String zza = "type.googleapis.com/google.crypto.tink.AesSivKey";
    @Deprecated
    public static final zzggm zzb = zzggm.zzc();
    @Deprecated
    public static final zzggm zzc = zzggm.zzc();

    static {
        new zzgao();
        try {
            zzfza.zzn(new zzgar());
            if (zzgal.zzb()) {
                return;
            }
            zzfza.zzm(new zzgao(), true);
        } catch (GeneralSecurityException e) {
            throw new ExceptionInInitializerError(e);
        }
    }
}
