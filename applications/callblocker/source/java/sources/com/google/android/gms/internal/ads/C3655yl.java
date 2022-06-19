package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
/* renamed from: com.google.android.gms.internal.ads.yl */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/yl.class */
public final class C3655yl extends cqi {

    /* renamed from: a */
    private final Executor f17651a;

    private C3655yl(Executor executor) {
        this.f17651a = executor;
    }

    public /* synthetic */ C3655yl(Executor executor, ThreadFactoryC3653yj threadFactoryC3653yj) {
        this(executor);
    }

    @Override // java.util.concurrent.ExecutorService
    public final boolean awaitTermination(long j, TimeUnit timeUnit) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f17651a.execute(runnable);
    }

    @Override // java.util.concurrent.ExecutorService
    public final boolean isShutdown() {
        return false;
    }

    @Override // java.util.concurrent.ExecutorService
    public final boolean isTerminated() {
        return false;
    }

    @Override // java.util.concurrent.ExecutorService
    public final void shutdown() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.concurrent.ExecutorService
    public final List<Runnable> shutdownNow() {
        throw new UnsupportedOperationException();
    }
}
