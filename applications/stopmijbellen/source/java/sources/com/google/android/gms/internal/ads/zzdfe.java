package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdfe.class */
public final class zzdfe extends zzdkb<zzdev> implements zzdev {
    private final ScheduledExecutorService zzb;
    private ScheduledFuture<?> zzc;
    private boolean zzd = false;
    private final boolean zze = ((Boolean) zzbgq.zzc().zzb(zzblj.zzhi)).booleanValue();

    public zzdfe(zzdfd zzdfdVar, Set<zzdlw<zzdev>> set, Executor executor, ScheduledExecutorService scheduledExecutorService) {
        super(set);
        this.zzb = scheduledExecutorService;
        zzj(zzdfdVar, executor);
    }

    @Override // com.google.android.gms.internal.ads.zzdev
    public final void zza(final zzbew zzbewVar) {
        zzo(new zzdka() { // from class: com.google.android.gms.internal.ads.zzdew
            @Override // com.google.android.gms.internal.ads.zzdka
            public final void zza(Object obj) {
                ((zzdev) obj).zza(zzbew.this);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzdev
    public final void zzb() {
        zzo(zzdey.zza);
    }

    public final /* synthetic */ void zzc() {
        synchronized (this) {
            zzciz.zzg("Timeout waiting for show call succeed to be called.");
            zze(new zzdoa("Timeout for show call succeed."));
            this.zzd = true;
        }
    }

    public final void zzd() {
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

    @Override // com.google.android.gms.internal.ads.zzdev
    public final void zze(final zzdoa zzdoaVar) {
        if (this.zze) {
            if (this.zzd) {
                return;
            }
            ScheduledFuture<?> scheduledFuture = this.zzc;
            if (scheduledFuture != null) {
                scheduledFuture.cancel(true);
            }
        }
        zzo(new zzdka() { // from class: com.google.android.gms.internal.ads.zzdex
            @Override // com.google.android.gms.internal.ads.zzdka
            public final void zza(Object obj) {
                ((zzdev) obj).zze(zzdoa.this);
            }
        });
    }

    public final void zzf() {
        if (!this.zze) {
            return;
        }
        this.zzc = this.zzb.schedule(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdez
            @Override // java.lang.Runnable
            public final void run() {
                zzdfe.this.zzc();
            }
        }, ((Integer) zzbgq.zzc().zzb(zzblj.zzhj)).intValue(), TimeUnit.MILLISECONDS);
    }
}
