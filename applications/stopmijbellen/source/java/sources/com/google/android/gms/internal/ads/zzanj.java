package com.google.android.gms.internal.ads;

import java.lang.reflect.InvocationTargetException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzanj.class */
public final class zzanj extends zzaoa {
    private static volatile Long zzi;
    private static final Object zzj = new Object();

    public zzanj(zzams zzamsVar, String str, String str2, zzaiz zzaizVar, int i, int i2) {
        super(zzamsVar, "hUIXYyX7voAFfmX9K6Tyj7UNRMoApsO3NHhichzgf1HY6Km4YpCnpT8GA4sfwulx", "RhEw32BK9OU3wzUC3Jj98VTZvnt6yWz3Jzx/x8tD2qo=", zzaizVar, i, 22);
    }

    @Override // com.google.android.gms.internal.ads.zzaoa
    public final void zza() throws IllegalAccessException, InvocationTargetException {
        if (zzi == null) {
            synchronized (zzj) {
                if (zzi == null) {
                    zzi = (Long) this.zzf.invoke(null, new Object[0]);
                }
            }
        }
        synchronized (this.zze) {
            this.zze.zzu(zzi.longValue());
        }
    }
}
