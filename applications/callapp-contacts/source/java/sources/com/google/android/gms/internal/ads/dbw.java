package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dbw.class */
final class dbw extends dbx implements dbs, ScheduledExecutorService {

    /* renamed from: a */
    private final ScheduledExecutorService f46928a;

    public dbw(ScheduledExecutorService scheduledExecutorService) {
        super(scheduledExecutorService);
        this.f46928a = (ScheduledExecutorService) cyg.m17060a(scheduledExecutorService);
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* synthetic */ ScheduledFuture schedule(Runnable runnable, long j, TimeUnit timeUnit) {
        dcf m16878a = dcf.m16878a(runnable, (Object) null);
        return new dbz(m16878a, this.f46928a.schedule(m16878a, j, timeUnit));
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* synthetic */ ScheduledFuture schedule(Callable callable, long j, TimeUnit timeUnit) {
        dcf m16877a = dcf.m16877a(callable);
        return new dbz(m16877a, this.f46928a.schedule(m16877a, j, timeUnit));
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* synthetic */ ScheduledFuture scheduleAtFixedRate(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        dby dbyVar = new dby(runnable);
        return new dbz(dbyVar, this.f46928a.scheduleAtFixedRate(dbyVar, j, j2, timeUnit));
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* synthetic */ ScheduledFuture scheduleWithFixedDelay(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        dby dbyVar = new dby(runnable);
        return new dbz(dbyVar, this.f46928a.scheduleWithFixedDelay(dbyVar, j, j2, timeUnit));
    }
}
