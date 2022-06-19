package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.util.Clock;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbkq.class */
public final class zzbkq implements zzrm {
    private final Clock zzbqg;
    private final ScheduledExecutorService zzfth;
    private ScheduledFuture<?> zzfti;
    private long zzftj = -1;
    private long zzftk = -1;
    private Runnable zzedk = null;
    private boolean zzftl = false;

    public zzbkq(ScheduledExecutorService scheduledExecutorService, Clock clock) {
        this.zzfth = scheduledExecutorService;
        this.zzbqg = clock;
        zzr.zzku().zza(this);
    }

    private final void zzajc() {
        synchronized (this) {
            if (!this.zzftl) {
                ScheduledFuture<?> scheduledFuture = this.zzfti;
                if (scheduledFuture == null || scheduledFuture.isDone()) {
                    this.zzftk = -1L;
                } else {
                    this.zzfti.cancel(true);
                    this.zzftk = this.zzftj - this.zzbqg.elapsedRealtime();
                }
                this.zzftl = true;
            }
        }
    }

    private final void zzajd() {
        ScheduledFuture<?> scheduledFuture;
        synchronized (this) {
            if (this.zzftl) {
                if (this.zzftk > 0 && (scheduledFuture = this.zzfti) != null && scheduledFuture.isCancelled()) {
                    this.zzfti = this.zzfth.schedule(this.zzedk, this.zzftk, TimeUnit.MILLISECONDS);
                }
                this.zzftl = false;
            }
        }
    }

    public final void zza(int i, Runnable runnable) {
        synchronized (this) {
            this.zzedk = runnable;
            long j = i;
            this.zzftj = this.zzbqg.elapsedRealtime() + j;
            this.zzfti = this.zzfth.schedule(runnable, j, TimeUnit.MILLISECONDS);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzrm
    public final void zzp(boolean z) {
        if (z) {
            zzajd();
        } else {
            zzajc();
        }
    }
}
