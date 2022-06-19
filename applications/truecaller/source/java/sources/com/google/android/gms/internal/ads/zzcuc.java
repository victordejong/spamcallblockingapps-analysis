package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcuc.class */
public final class zzcuc implements zzaww {
    private final ScheduledExecutorService zza;
    private final Clock zzb;
    private ScheduledFuture<?> zzc;
    private long zzd = -1;
    private long zze = -1;
    private Runnable zzf = null;
    private boolean zzg = false;

    public zzcuc(ScheduledExecutorService scheduledExecutorService, Clock clock) {
        this.zza = scheduledExecutorService;
        this.zzb = clock;
        zzt.zzf().zzb(this);
    }

    @Override // com.google.android.gms.internal.ads.zzaww
    public final void zza(boolean z) {
        if (z) {
            zzd();
        } else {
            zzc();
        }
    }

    public final void zzb(int i, Runnable runnable) {
        synchronized (this) {
            this.zzf = runnable;
            long j = i;
            this.zzd = this.zzb.mo38789a() + j;
            this.zzc = this.zza.schedule(runnable, j, TimeUnit.MILLISECONDS);
        }
    }

    @VisibleForTesting
    public final void zzc() {
        synchronized (this) {
            if (!this.zzg) {
                ScheduledFuture<?> scheduledFuture = this.zzc;
                if (scheduledFuture == null || scheduledFuture.isDone()) {
                    this.zze = -1L;
                } else {
                    this.zzc.cancel(true);
                    this.zze = this.zzd - this.zzb.mo38789a();
                }
                this.zzg = true;
            }
        }
    }

    @VisibleForTesting
    public final void zzd() {
        ScheduledFuture<?> scheduledFuture;
        synchronized (this) {
            if (this.zzg) {
                if (this.zze > 0 && (scheduledFuture = this.zzc) != null && scheduledFuture.isCancelled()) {
                    this.zzc = this.zza.schedule(this.zzf, this.zze, TimeUnit.MILLISECONDS);
                }
                this.zzg = false;
            }
        }
    }
}
