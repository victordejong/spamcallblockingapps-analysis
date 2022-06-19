package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import java.util.Collections;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdhg.class */
public final class zzdhg extends zzdkb<zzdhh> {
    private final ScheduledExecutorService zzb;
    private final Clock zzc;
    @GuardedBy("this")
    private long zzd = -1;
    @GuardedBy("this")
    private long zze = -1;
    @GuardedBy("this")
    private boolean zzf = false;
    @GuardedBy("this")
    private ScheduledFuture<?> zzg;

    public zzdhg(ScheduledExecutorService scheduledExecutorService, Clock clock) {
        super(Collections.emptySet());
        this.zzb = scheduledExecutorService;
        this.zzc = clock;
    }

    private final void zze(long j) {
        synchronized (this) {
            ScheduledFuture<?> scheduledFuture = this.zzg;
            if (scheduledFuture != null && !scheduledFuture.isDone()) {
                this.zzg.cancel(true);
            }
            this.zzd = this.zzc.elapsedRealtime() + j;
            this.zzg = this.zzb.schedule(new zzdhf(this, null), j, TimeUnit.MILLISECONDS);
        }
    }

    public final void zza() {
        synchronized (this) {
            this.zzf = false;
            zze(0L);
        }
    }

    public final void zzb() {
        synchronized (this) {
            if (!this.zzf) {
                ScheduledFuture<?> scheduledFuture = this.zzg;
                if (scheduledFuture == null || scheduledFuture.isCancelled()) {
                    this.zze = -1L;
                } else {
                    this.zzg.cancel(true);
                    this.zze = this.zzd - this.zzc.elapsedRealtime();
                }
                this.zzf = true;
            }
        }
    }

    public final void zzc() {
        synchronized (this) {
            if (this.zzf) {
                if (this.zze > 0 && this.zzg.isCancelled()) {
                    zze(this.zze);
                }
                this.zzf = false;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    public final void zzd(int i) {
        synchronized (this) {
            if (i <= 0) {
                return;
            }
            char millis = TimeUnit.SECONDS.toMillis(i);
            if (this.zzf) {
                ?? r0 = this.zze;
                if (r0 <= 0 || millis >= r0) {
                    millis = r0;
                }
                this.zze = millis;
                return;
            }
            long elapsedRealtime = this.zzc.elapsedRealtime();
            long j = this.zzd;
            if (elapsedRealtime <= j && j - this.zzc.elapsedRealtime() <= millis) {
                return;
            }
            zze(millis);
        }
    }
}
