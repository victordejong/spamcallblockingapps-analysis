package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzddr.class */
public final class zzddr implements zzder, zzdlo, zzdjm, zzdfh {
    private final zzdfj zza;
    private final zzfdn zzb;
    private final ScheduledExecutorService zzc;
    private final Executor zzd;
    private final zzfxi<Boolean> zze = zzfxi.zza();
    private ScheduledFuture<?> zzf;

    public zzddr(zzdfj zzdfjVar, zzfdn zzfdnVar, ScheduledExecutorService scheduledExecutorService, Executor executor) {
        this.zza = zzdfjVar;
        this.zzb = zzfdnVar;
        this.zzc = scheduledExecutorService;
        this.zzd = executor;
    }

    public final /* synthetic */ void zzb() {
        synchronized (this) {
            if (this.zze.isDone()) {
                return;
            }
            this.zze.zzs(Boolean.TRUE);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzder
    public final void zzbD() {
    }

    @Override // com.google.android.gms.internal.ads.zzdjm
    public final void zzc() {
    }

    @Override // com.google.android.gms.internal.ads.zzdjm
    public final void zzd() {
        synchronized (this) {
            if (this.zze.isDone()) {
                return;
            }
            ScheduledFuture<?> scheduledFuture = this.zzf;
            if (scheduledFuture != null) {
                scheduledFuture.cancel(true);
            }
            this.zze.zzs(Boolean.TRUE);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdlo
    public final void zze() {
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzbg)).booleanValue()) {
            zzfdn zzfdnVar = this.zzb;
            if (zzfdnVar.zzV != 2) {
                return;
            }
            if (zzfdnVar.zzr == 0) {
                this.zza.zza();
                return;
            }
            zzfwq.zzr(this.zze, new zzddq(this), this.zzd);
            this.zzf = this.zzc.schedule(new Runnable() { // from class: com.google.android.gms.internal.ads.zzddp
                @Override // java.lang.Runnable
                public final void run() {
                    zzddr.this.zzb();
                }
            }, this.zzb.zzr, TimeUnit.MILLISECONDS);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdlo
    public final void zzf() {
    }

    @Override // com.google.android.gms.internal.ads.zzder
    public final void zzj() {
    }

    @Override // com.google.android.gms.internal.ads.zzdfh
    public final void zzk(zzbew zzbewVar) {
        synchronized (this) {
            if (this.zze.isDone()) {
                return;
            }
            ScheduledFuture<?> scheduledFuture = this.zzf;
            if (scheduledFuture != null) {
                scheduledFuture.cancel(true);
            }
            this.zze.zzt(new Exception());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzder
    public final void zzm() {
    }

    @Override // com.google.android.gms.internal.ads.zzder
    public final void zzo() {
        int i = this.zzb.zzV;
        if (i == 0 || i == 1) {
            this.zza.zza();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzder
    public final void zzp(zzceg zzcegVar, String str, String str2) {
    }

    @Override // com.google.android.gms.internal.ads.zzder
    public final void zzr() {
    }
}
