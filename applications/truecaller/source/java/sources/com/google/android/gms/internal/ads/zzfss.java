package com.google.android.gms.internal.ads;

import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfss.class */
public final class zzfss extends zzfsp implements ScheduledExecutorService, zzfsn {
    public final ScheduledExecutorService zza;

    public zzfss(ScheduledExecutorService scheduledExecutorService) {
        super(scheduledExecutorService);
        Objects.requireNonNull(scheduledExecutorService);
        this.zza = scheduledExecutorService;
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* bridge */ /* synthetic */ ScheduledFuture schedule(Runnable runnable, long j, TimeUnit timeUnit) {
        zzftb zza = zzftb.zza(runnable, null);
        return new zzfsq(zza, this.zza.schedule(zza, j, timeUnit));
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* bridge */ /* synthetic */ ScheduledFuture schedule(Callable callable, long j, TimeUnit timeUnit) {
        zzftb zzftbVar = new zzftb(callable);
        return new zzfsq(zzftbVar, this.zza.schedule(zzftbVar, j, timeUnit));
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* bridge */ /* synthetic */ ScheduledFuture scheduleAtFixedRate(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        zzfsr zzfsrVar = new zzfsr(runnable);
        return new zzfsq(zzfsrVar, this.zza.scheduleAtFixedRate(zzfsrVar, j, j2, timeUnit));
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* bridge */ /* synthetic */ ScheduledFuture scheduleWithFixedDelay(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        zzfsr zzfsrVar = new zzfsr(runnable);
        return new zzfsq(zzfsrVar, this.zza.scheduleWithFixedDelay(zzfsrVar, j, j2, timeUnit));
    }
}
