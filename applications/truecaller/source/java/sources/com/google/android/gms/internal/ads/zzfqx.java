package com.google.android.gms.internal.ads;

import java.util.concurrent.AbstractExecutorService;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.RunnableFuture;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfqx.class */
public abstract class zzfqx extends AbstractExecutorService implements zzfsn {
    @Override // java.util.concurrent.AbstractExecutorService
    public final <T> RunnableFuture<T> newTaskFor(Runnable runnable, T t) {
        return zzftb.zza(runnable, t);
    }

    @Override // java.util.concurrent.AbstractExecutorService
    public final <T> RunnableFuture<T> newTaskFor(Callable<T> callable) {
        return new zzftb(callable);
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    public final /* bridge */ /* synthetic */ Future submit(Runnable runnable) {
        return (zzfsm) super.submit(runnable);
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    public final /* bridge */ /* synthetic */ Future submit(Runnable runnable, Object obj) {
        return (zzfsm) super.submit(runnable, obj);
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    public final /* bridge */ /* synthetic */ Future submit(Callable callable) {
        return (zzfsm) super.submit(callable);
    }

    @Override // com.google.android.gms.internal.ads.zzfsn
    public final zzfsm<?> zza(Runnable runnable) {
        return (zzfsm) super.submit(runnable);
    }

    @Override // com.google.android.gms.internal.ads.zzfsn
    public final <T> zzfsm<T> zzb(Callable<T> callable) {
        return (zzfsm) super.submit(callable);
    }
}
