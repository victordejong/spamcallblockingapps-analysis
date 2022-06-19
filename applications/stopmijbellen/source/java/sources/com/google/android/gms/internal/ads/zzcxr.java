package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcxr.class */
public final class zzcxr implements zzayt {
    private final ScheduledExecutorService zza;
    private final Clock zzb;
    @GuardedBy("this")
    private ScheduledFuture<?> zzc;
    @GuardedBy("this")
    private long zzd = -1;
    @GuardedBy("this")
    private long zze = -1;
    @GuardedBy("this")
    private Runnable zzf = null;
    @GuardedBy("this")
    private boolean zzg = false;

    public zzcxr(ScheduledExecutorService scheduledExecutorService, Clock clock) {
        this.zza = scheduledExecutorService;
        this.zzb = clock;
        zzt.zzb().zzc(this);
    }

    @Override // com.google.android.gms.internal.ads.zzayt
    public final void zza(boolean z) {
        if (z) {
            zzc();
        } else {
            zzb();
        }
    }

    @VisibleForTesting
    public final void zzb() {
        synchronized (this) {
            if (!this.zzg) {
                ScheduledFuture<?> scheduledFuture = this.zzc;
                if (scheduledFuture == null || scheduledFuture.isDone()) {
                    this.zze = -1L;
                } else {
                    this.zzc.cancel(true);
                    this.zze = this.zzd - this.zzb.elapsedRealtime();
                }
                this.zzg = true;
            }
        }
    }

    @VisibleForTesting
    public final void zzc() {
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

    public final void zzd(int i, Runnable runnable) {
        synchronized (this) {
            this.zzf = runnable;
            long j = i;
            this.zzd = this.zzb.elapsedRealtime() + j;
            this.zzc = this.zza.schedule(runnable, j, TimeUnit.MILLISECONDS);
        }
    }
}
