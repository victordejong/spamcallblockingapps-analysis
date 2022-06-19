package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfwy.class */
public final class zzfwy {
    @Deprecated
    public static final zzgby zza;
    @Deprecated
    public static final zzgby zzb;
    @Deprecated
    public static final zzgby zzc;

    static {
        new zzfwx();
        zzgby zzc2 = zzgby.zzc();
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
        zzfum.zze(new zzfxb());
        zzfum.zzc(new zzfwx(), true);
        if (zzfvx.zza()) {
            return;
        }
        zzfum.zzc(new zzfwu(), true);
    }
}
