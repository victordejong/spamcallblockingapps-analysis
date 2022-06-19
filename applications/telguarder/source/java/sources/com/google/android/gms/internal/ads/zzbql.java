package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbql.class */
public final class zzbql implements zzbrm, zzbsa, zzbvq, zzbxp {
    private final Executor executor;
    private final zzbsd zzfxz;
    private final zzdmw zzfya;
    private final ScheduledExecutorService zzfyb;
    private zzeae<Boolean> zzfyc = zzeae.zzbag();
    private ScheduledFuture<?> zzfyd;

    public zzbql(zzbsd zzbsdVar, zzdmw zzdmwVar, ScheduledExecutorService scheduledExecutorService, Executor executor) {
        this.zzfxz = zzbsdVar;
        this.zzfya = zzdmwVar;
        this.zzfyb = scheduledExecutorService;
        this.executor = executor;
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void onAdClosed() {
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void onAdLeftApplication() {
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void onAdOpened() {
        if (this.zzfya.zzhjs == 0 || this.zzfya.zzhjs == 1) {
            this.zzfxz.onAdImpression();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void onRewardedVideoCompleted() {
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void onRewardedVideoStarted() {
    }

    @Override // com.google.android.gms.internal.ads.zzbxp
    public final void zzald() {
        if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzcre)).booleanValue() || this.zzfya.zzhjs != 2) {
            return;
        }
        if (this.zzfya.zzhje == 0) {
            this.zzfxz.onAdImpression();
            return;
        }
        zzdzk.zza(this.zzfyc, new zzbqn(this), this.executor);
        this.zzfyd = this.zzfyb.schedule(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzbqo
            private final zzbql zzfyf;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzfyf = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzfyf.zzalh();
            }
        }, this.zzfya.zzhje, TimeUnit.MILLISECONDS);
    }

    @Override // com.google.android.gms.internal.ads.zzbvq
    public final void zzale() {
        synchronized (this) {
            if (this.zzfyc.isDone()) {
                return;
            }
            ScheduledFuture<?> scheduledFuture = this.zzfyd;
            if (scheduledFuture != null) {
                scheduledFuture.cancel(true);
            }
            this.zzfyc.set(true);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbxp
    public final void zzalf() {
    }

    @Override // com.google.android.gms.internal.ads.zzbvq
    public final void zzalg() {
    }

    public final /* synthetic */ void zzalh() {
        synchronized (this) {
            if (this.zzfyc.isDone()) {
                return;
            }
            this.zzfyc.set(true);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void zzb(zzauk zzaukVar, String str, String str2) {
    }

    @Override // com.google.android.gms.internal.ads.zzbsa
    public final void zzk(zzvg zzvgVar) {
        synchronized (this) {
            if (this.zzfyc.isDone()) {
                return;
            }
            ScheduledFuture<?> scheduledFuture = this.zzfyd;
            if (scheduledFuture != null) {
                scheduledFuture.cancel(true);
            }
            this.zzfyc.setException(new Exception());
        }
    }
}
