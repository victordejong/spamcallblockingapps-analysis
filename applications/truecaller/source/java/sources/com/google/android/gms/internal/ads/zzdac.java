package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdac.class */
public final class zzdac implements zzdbc, zzdhz, zzdfx, zzdbs {
    private final zzdbu zza;
    private final zzezz zzb;
    private final ScheduledExecutorService zzc;
    private final Executor zzd;
    private final zzfsu<Boolean> zze = zzfsu.zza();
    private ScheduledFuture<?> zzf;

    public zzdac(zzdbu zzdbuVar, zzezz zzezzVar, ScheduledExecutorService scheduledExecutorService, Executor executor) {
        this.zza = zzdbuVar;
        this.zzb = zzezzVar;
        this.zzc = scheduledExecutorService;
        this.zzd = executor;
    }

    @Override // com.google.android.gms.internal.ads.zzdhz
    public final void zzb() {
        if (((Boolean) zzbet.zzc().zzc(zzbjl.zzba)).booleanValue()) {
            zzezz zzezzVar = this.zzb;
            if (zzezzVar.zzU != 2) {
                return;
            }
            if (zzezzVar.zzq == 0) {
                this.zza.zza();
                return;
            }
            zzfsd.zzp(this.zze, new zzdab(this), this.zzd);
            this.zzf = this.zzc.schedule(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzdaa
                private final zzdac zza;

                {
                    this.zza = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zza.zzf();
                }
            }, this.zzb.zzq, TimeUnit.MILLISECONDS);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdfx
    public final void zzc() {
        synchronized (this) {
            if (this.zze.isDone()) {
                return;
            }
            ScheduledFuture<?> scheduledFuture = this.zzf;
            if (scheduledFuture != null) {
                scheduledFuture.cancel(true);
            }
            this.zze.zzp(Boolean.TRUE);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdhz
    public final void zzd() {
    }

    @Override // com.google.android.gms.internal.ads.zzdfx
    public final void zze() {
    }

    public final /* synthetic */ void zzf() {
        synchronized (this) {
            if (this.zze.isDone()) {
                return;
            }
            this.zze.zzp(Boolean.TRUE);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdbc
    public final void zzh() {
        int i = this.zzb.zzU;
        if (i == 0 || i == 1) {
            this.zza.zza();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdbc
    public final void zzi() {
    }

    @Override // com.google.android.gms.internal.ads.zzdbc
    public final void zzj() {
    }

    @Override // com.google.android.gms.internal.ads.zzdbc
    public final void zzk(zzcbz zzcbzVar, String str, String str2) {
    }

    @Override // com.google.android.gms.internal.ads.zzdbc
    public final void zzl() {
    }

    @Override // com.google.android.gms.internal.ads.zzdbc
    public final void zzm() {
    }

    @Override // com.google.android.gms.internal.ads.zzdbs
    public final void zzn(zzbcz zzbczVar) {
        synchronized (this) {
            if (this.zze.isDone()) {
                return;
            }
            ScheduledFuture<?> scheduledFuture = this.zzf;
            if (scheduledFuture != null) {
                scheduledFuture.cancel(true);
            }
            this.zze.zzq(new Exception());
        }
    }
}
