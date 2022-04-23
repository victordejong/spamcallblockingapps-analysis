package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dbw.class */
final class dbw extends dbx implements dbs, ScheduledExecutorService {

    /* renamed from: a  reason: collision with root package name */
    private final ScheduledExecutorService f26709a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dbw(ScheduledExecutorService scheduledExecutorService) {
        super(scheduledExecutorService);
        this.f26709a = (ScheduledExecutorService) cyg.a(scheduledExecutorService);
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* synthetic */ ScheduledFuture schedule(Runnable runnable, long j, TimeUnit timeUnit) {
        dcf a2 = dcf.a(runnable, (Object) null);
        return new dbz(a2, this.f26709a.schedule(a2, j, timeUnit));
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* synthetic */ ScheduledFuture schedule(Callable callable, long j, TimeUnit timeUnit) {
        dcf a2 = dcf.a(callable);
        return new dbz(a2, this.f26709a.schedule(a2, j, timeUnit));
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* synthetic */ ScheduledFuture scheduleAtFixedRate(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        dby dbyVar = new dby(runnable);
        return new dbz(dbyVar, this.f26709a.scheduleAtFixedRate(dbyVar, j, j2, timeUnit));
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* synthetic */ ScheduledFuture scheduleWithFixedDelay(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        dby dbyVar = new dby(runnable);
        return new dbz(dbyVar, this.f26709a.scheduleWithFixedDelay(dbyVar, j, j2, timeUnit));
    }
}
