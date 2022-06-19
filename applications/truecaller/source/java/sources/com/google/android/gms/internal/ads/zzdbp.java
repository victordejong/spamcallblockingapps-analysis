package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdbp.class */
public final class zzdbp extends zzdgm<zzdbg> implements zzdbg {
    private final ScheduledExecutorService zzb;
    private ScheduledFuture<?> zzc;
    private boolean zzd = false;
    private final boolean zze = ((Boolean) zzbet.zzc().zzc(zzbjl.zzgX)).booleanValue();

    public zzdbp(zzdbo zzdboVar, Set<zzdih<zzdbg>> set, Executor executor, ScheduledExecutorService scheduledExecutorService) {
        super(set);
        this.zzb = scheduledExecutorService;
        zzi(zzdboVar, executor);
    }

    @Override // com.google.android.gms.internal.ads.zzdbg
    public final void zza(zzbcz zzbczVar) {
        zzk(new zzdgl(zzbczVar) { // from class: com.google.android.gms.internal.ads.zzdbh
            private final zzbcz zza;

            {
                this.zza = zzbczVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdgl
            public final void zza(Object obj) {
                ((zzdbg) obj).zza(this.zza);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzdbg
    public final void zzb(zzdkm zzdkmVar) {
        if (this.zze) {
            if (this.zzd) {
                return;
            }
            ScheduledFuture<?> scheduledFuture = this.zzc;
            if (scheduledFuture != null) {
                scheduledFuture.cancel(true);
            }
        }
        zzk(new zzdgl(zzdkmVar) { // from class: com.google.android.gms.internal.ads.zzdbi
            private final zzdkm zza;

            {
                this.zza = zzdkmVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdgl
            public final void zza(Object obj) {
                ((zzdbg) obj).zzb(this.zza);
            }
        });
    }

    public final void zzc() {
        synchronized (this) {
            if (!this.zze) {
                return;
            }
            ScheduledFuture<?> scheduledFuture = this.zzc;
            if (scheduledFuture == null) {
                return;
            }
            scheduledFuture.cancel(true);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdbg
    public final void zzd() {
        zzk(zzdbj.zza);
    }

    public final void zze() {
        if (!this.zze) {
            return;
        }
        this.zzc = this.zzb.schedule(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzdbk
            private final zzdbp zza;

            {
                this.zza = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzf();
            }
        }, ((Integer) zzbet.zzc().zzc(zzbjl.zzgY)).intValue(), TimeUnit.MILLISECONDS);
    }

    public final /* synthetic */ void zzf() {
        synchronized (this) {
            zzcgt.zzf("Timeout waiting for show call succeed to be called.");
            zzb(new zzdkm("Timeout for show call succeed."));
            this.zzd = true;
        }
    }
}
