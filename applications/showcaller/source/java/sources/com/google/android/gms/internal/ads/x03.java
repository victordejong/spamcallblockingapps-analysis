package com.google.android.gms.internal.ads;

import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/x03.class */
public final class x03 extends u03 implements ScheduledExecutorService, s03 {

    /* renamed from: e */
    final ScheduledExecutorService f31873e;

    public x03(ScheduledExecutorService scheduledExecutorService) {
        super(scheduledExecutorService);
        Objects.requireNonNull(scheduledExecutorService);
        this.f31873e = scheduledExecutorService;
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* bridge */ /* synthetic */ ScheduledFuture schedule(Runnable runnable, long j, TimeUnit timeUnit) {
        e13 m15608F = e13.m15608F(runnable, null);
        return new v03(m15608F, this.f31873e.schedule(m15608F, j, timeUnit));
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* bridge */ /* synthetic */ ScheduledFuture schedule(Callable callable, long j, TimeUnit timeUnit) {
        e13 e13Var = new e13(callable);
        return new v03(e13Var, this.f31873e.schedule(e13Var, j, timeUnit));
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* bridge */ /* synthetic */ ScheduledFuture scheduleAtFixedRate(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        w03 w03Var = new w03(runnable);
        return new v03(w03Var, this.f31873e.scheduleAtFixedRate(w03Var, j, j2, timeUnit));
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* bridge */ /* synthetic */ ScheduledFuture scheduleWithFixedDelay(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        w03 w03Var = new w03(runnable);
        return new v03(w03Var, this.f31873e.scheduleWithFixedDelay(w03Var, j, j2, timeUnit));
    }
}
