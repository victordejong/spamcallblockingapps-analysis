package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdfj;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzddy.class */
public final class zzddy<S extends zzdfj<?>> implements zzdfi<S> {
    private final ScheduledExecutorService zzfth;
    private final zzdfi<S> zzhbo;
    private final long zzhcl;

    public zzddy(zzdfi<S> zzdfiVar, long j, ScheduledExecutorService scheduledExecutorService) {
        this.zzhbo = zzdfiVar;
        this.zzhcl = j;
        this.zzfth = scheduledExecutorService;
    }

    @Override // com.google.android.gms.internal.ads.zzdfi
    public final zzdzw<S> zzasy() {
        zzdzw<S> zzasy = this.zzhbo.zzasy();
        long j = this.zzhcl;
        zzdzw<S> zzdzwVar = zzasy;
        if (j > 0) {
            zzdzwVar = zzdzk.zza(zzasy, j, TimeUnit.MILLISECONDS, this.zzfth);
        }
        return zzdzk.zzb(zzdzwVar, Throwable.class, zzdeb.zzboq, zzazp.zzeih);
    }
}
