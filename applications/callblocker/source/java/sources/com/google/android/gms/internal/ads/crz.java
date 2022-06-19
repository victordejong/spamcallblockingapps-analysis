package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/crz.class */
public final class crz extends crw implements crs, ScheduledExecutorService {

    /* renamed from: a */
    private final ScheduledExecutorService f13626a;

    public crz(ScheduledExecutorService scheduledExecutorService) {
        super(scheduledExecutorService);
        this.f13626a = (ScheduledExecutorService) cor.m10936a(scheduledExecutorService);
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* synthetic */ ScheduledFuture schedule(Runnable runnable, long j, TimeUnit timeUnit) {
        csh m10746a = csh.m10746a(runnable, (Object) null);
        return new cry(m10746a, this.f13626a.schedule(m10746a, j, timeUnit));
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* synthetic */ ScheduledFuture schedule(Callable callable, long j, TimeUnit timeUnit) {
        csh m10745a = csh.m10745a(callable);
        return new cry(m10745a, this.f13626a.schedule(m10745a, j, timeUnit));
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* synthetic */ ScheduledFuture scheduleAtFixedRate(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        csb csbVar = new csb(runnable);
        return new cry(csbVar, this.f13626a.scheduleAtFixedRate(csbVar, j, j2, timeUnit));
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* synthetic */ ScheduledFuture scheduleWithFixedDelay(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        csb csbVar = new csb(runnable);
        return new cry(csbVar, this.f13626a.scheduleWithFixedDelay(csbVar, j, j2, timeUnit));
    }
}
