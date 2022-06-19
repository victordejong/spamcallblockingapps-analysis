package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfwb.class */
public final class zzfwb {
    public static final String zza = "type.googleapis.com/google.crypto.tink.AesSivKey";
    @Deprecated
    public static final zzgby zzb = zzgby.zzc();
    @Deprecated
    public static final zzgby zzc = zzgby.zzc();

    static {
        new zzfwa();
        try {
            zzfum.zze(new zzfwd());
            if (zzfvx.zza()) {
                return;
            }
            zzfum.zzc(new zzfwa(), true);
        } catch (GeneralSecurityException e) {
            throw new ExceptionInInitializerError(e);
        }
    }
}
