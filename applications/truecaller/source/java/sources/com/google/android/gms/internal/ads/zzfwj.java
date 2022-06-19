package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfwj.class */
public final class zzfwj {
    @Deprecated
    public static final zzgby zza = zzgby.zzc();
    @Deprecated
    public static final zzgby zzb = zzgby.zzc();
    @Deprecated
    public static final zzgby zzc = zzgby.zzc();

    static {
        new zzfwi();
        new zzfwg();
        try {
            zzfum.zze(new zzfwl());
            zzfum.zze(new zzfwo());
            zzfuo.zza();
            if (zzfvx.zza()) {
                return;
            }
            zzfum.zzd(new zzfwg(), new zzfwi(), true);
        } catch (GeneralSecurityException e) {
            throw new ExceptionInInitializerError(e);
        }
    }
}
