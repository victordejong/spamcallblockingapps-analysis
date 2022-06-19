package com.google.android.gms.internal.ads;

import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfxg.class */
public final class zzfxg extends zzfxd implements ScheduledExecutorService {
    public final ScheduledExecutorService zza;

    public zzfxg(ScheduledExecutorService scheduledExecutorService) {
        super(scheduledExecutorService);
        Objects.requireNonNull(scheduledExecutorService);
        this.zza = scheduledExecutorService;
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* bridge */ /* synthetic */ ScheduledFuture schedule(Runnable runnable, long j, TimeUnit timeUnit) {
        zzfxp zza = zzfxp.zza(runnable, null);
        return new zzfxe(zza, this.zza.schedule(zza, j, timeUnit));
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* bridge */ /* synthetic */ ScheduledFuture schedule(Callable callable, long j, TimeUnit timeUnit) {
        zzfxp zzfxpVar = new zzfxp(callable);
        return new zzfxe(zzfxpVar, this.zza.schedule(zzfxpVar, j, timeUnit));
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* bridge */ /* synthetic */ ScheduledFuture scheduleAtFixedRate(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        zzfxf zzfxfVar = new zzfxf(runnable);
        return new zzfxe(zzfxfVar, this.zza.scheduleAtFixedRate(zzfxfVar, j, j2, timeUnit));
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* bridge */ /* synthetic */ ScheduledFuture scheduleWithFixedDelay(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        zzfxf zzfxfVar = new zzfxf(runnable);
        return new zzfxe(zzfxfVar, this.zza.scheduleWithFixedDelay(zzfxfVar, j, j2, timeUnit));
    }
}
