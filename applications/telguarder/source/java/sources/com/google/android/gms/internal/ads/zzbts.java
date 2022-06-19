package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import java.util.Collections;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbts.class */
public final class zzbts extends zzbwf<zzbtw> {
    private final Clock zzbqg;
    private final ScheduledExecutorService zzfth;
    private ScheduledFuture<?> zzfzq;
    private long zzftj = -1;
    private long zzftk = -1;
    private boolean zzfsp = false;

    public zzbts(ScheduledExecutorService scheduledExecutorService, Clock clock) {
        super(Collections.emptySet());
        this.zzfth = scheduledExecutorService;
        this.zzbqg = clock;
    }

    public final void zzalt() {
        zza(zzbtv.zzfzg);
    }

    private final void zzfd(long j) {
        synchronized (this) {
            ScheduledFuture<?> scheduledFuture = this.zzfzq;
            if (scheduledFuture != null && !scheduledFuture.isDone()) {
                this.zzfzq.cancel(true);
            }
            this.zzftj = this.zzbqg.elapsedRealtime() + j;
            this.zzfzq = this.zzfth.schedule(new zzbtx(this), j, TimeUnit.MILLISECONDS);
        }
    }

    public final void onPause() {
        synchronized (this) {
            if (!this.zzfsp) {
                ScheduledFuture<?> scheduledFuture = this.zzfzq;
                if (scheduledFuture == null || scheduledFuture.isCancelled()) {
                    this.zzftk = -1L;
                } else {
                    this.zzfzq.cancel(true);
                    this.zzftk = this.zzftj - this.zzbqg.elapsedRealtime();
                }
                this.zzfsp = true;
            }
        }
    }

    public final void onResume() {
        synchronized (this) {
            if (this.zzfsp) {
                if (this.zzftk > 0 && this.zzfzq.isCancelled()) {
                    zzfd(this.zzftk);
                }
                this.zzfsp = false;
            }
        }
    }

    public final void zzals() {
        synchronized (this) {
            this.zzfsp = false;
            zzfd(0L);
        }
    }

    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    public final void zzdx(int i) {
        synchronized (this) {
            if (i <= 0) {
                return;
            }
            char millis = TimeUnit.SECONDS.toMillis(i);
            if (this.zzfsp) {
                ?? r0 = this.zzftk;
                if (r0 <= 0 || millis >= r0) {
                    millis = r0;
                }
                this.zzftk = millis;
                return;
            }
            long elapsedRealtime = this.zzbqg.elapsedRealtime();
            long j = this.zzftj;
            if (elapsedRealtime > j || j - this.zzbqg.elapsedRealtime() > millis) {
                zzfd(millis);
            }
        }
    }
}
