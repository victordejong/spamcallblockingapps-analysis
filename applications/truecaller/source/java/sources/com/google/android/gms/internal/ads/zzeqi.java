package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzerx;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeqi.class */
public final class zzeqi<S extends zzerx> implements zzery<S> {
    private final zzery<S> zza;
    private final long zzb;
    private final ScheduledExecutorService zzc;

    public zzeqi(zzery<S> zzeryVar, long j, ScheduledExecutorService scheduledExecutorService) {
        this.zza = zzeryVar;
        this.zzb = j;
        this.zzc = scheduledExecutorService;
    }

    @Override // com.google.android.gms.internal.ads.zzery
    public final zzfsm<S> zza() {
        zzfsm<S> zza = this.zza.zza();
        long j = this.zzb;
        zzfsm<S> zzfsmVar = zza;
        if (j > 0) {
            zzfsmVar = zzfsd.zzh(zza, j, TimeUnit.MILLISECONDS, this.zzc);
        }
        return zzfsd.zzg(zzfsmVar, Throwable.class, zzeqh.zza, zzchg.zzf);
    }
}
