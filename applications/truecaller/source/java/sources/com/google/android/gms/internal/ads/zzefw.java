package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzefw.class */
public final class zzefw implements zzeec<zzcvh> {
    private final zzcwe zza;
    private final zzefd zzb;
    private final zzfsn zzc;
    private final zzdbe zzd;
    private final ScheduledExecutorService zze;

    public zzefw(zzcwe zzcweVar, zzefd zzefdVar, zzdbe zzdbeVar, ScheduledExecutorService scheduledExecutorService, zzfsn zzfsnVar) {
        this.zza = zzcweVar;
        this.zzb = zzefdVar;
        this.zzd = zzdbeVar;
        this.zze = scheduledExecutorService;
        this.zzc = zzfsnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeec
    public final boolean zza(zzfal zzfalVar, zzezz zzezzVar) {
        return zzfalVar.zza.zza.zza() != null && this.zzb.zza(zzfalVar, zzezzVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeec
    public final zzfsm<zzcvh> zzb(zzfal zzfalVar, zzezz zzezzVar) {
        return this.zzc.zzb(new Callable(this, zzfalVar, zzezzVar) { // from class: com.google.android.gms.internal.ads.zzeft
            private final zzefw zza;
            private final zzfal zzb;
            private final zzezz zzc;

            {
                this.zza = this;
                this.zzb = zzfalVar;
                this.zzc = zzezzVar;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zza.zze(this.zzb, this.zzc);
            }
        });
    }

    public final /* synthetic */ zzcvh zze(zzfal zzfalVar, zzezz zzezzVar) throws Exception {
        return this.zza.zzab(new zzcxv(zzfalVar, zzezzVar, null), new zzcwr(zzfalVar.zza.zza.zza(), new Runnable(this, zzfalVar, zzezzVar) { // from class: com.google.android.gms.internal.ads.zzefu
            private final zzefw zza;
            private final zzfal zzb;
            private final zzezz zzc;

            {
                this.zza = this;
                this.zzb = zzfalVar;
                this.zzc = zzezzVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzf(this.zzb, this.zzc);
            }
        })).zza();
    }

    public final /* synthetic */ void zzf(zzfal zzfalVar, zzezz zzezzVar) {
        zzfsd.zzp(zzfsd.zzh(this.zzb.zzb(zzfalVar, zzezzVar), zzezzVar.zzN, TimeUnit.SECONDS, this.zze), new zzefv(this), this.zzc);
    }
}
