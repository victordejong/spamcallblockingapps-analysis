package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzevm;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzetx.class */
public final class zzetx<S extends zzevm> implements zzevn<S> {
    private final zzevn<S> zza;
    private final long zzb;
    private final ScheduledExecutorService zzc;

    public zzetx(zzevn<S> zzevnVar, long j, ScheduledExecutorService scheduledExecutorService) {
        this.zza = zzevnVar;
        this.zzb = j;
        this.zzc = scheduledExecutorService;
    }

    @Override // com.google.android.gms.internal.ads.zzevn
    public final zzfxa<S> zzb() {
        zzfxa<S> zzb = this.zza.zzb();
        long j = this.zzb;
        zzfxa<S> zzfxaVar = zzb;
        if (j > 0) {
            zzfxaVar = zzfwq.zzo(zzb, j, TimeUnit.MILLISECONDS, this.zzc);
        }
        return zzfwq.zzg(zzfxaVar, Throwable.class, zzetw.zza, zzcjm.zzf);
    }
}
