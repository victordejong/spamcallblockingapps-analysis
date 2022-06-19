package com.google.android.gms.internal.ads;

import java.util.concurrent.AbstractExecutorService;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.RunnableFuture;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfvj.class */
public abstract class zzfvj extends AbstractExecutorService implements zzfxb {
    @Override // java.util.concurrent.AbstractExecutorService
    public final <T> RunnableFuture<T> newTaskFor(Runnable runnable, T t) {
        return zzfxp.zza(runnable, t);
    }

    @Override // java.util.concurrent.AbstractExecutorService
    public final <T> RunnableFuture<T> newTaskFor(Callable<T> callable) {
        return new zzfxp(callable);
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    public final /* synthetic */ Future submit(Runnable runnable) {
        return (zzfxa) super.submit(runnable);
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    public final /* synthetic */ Future submit(Runnable runnable, Object obj) {
        return (zzfxa) super.submit(runnable, obj);
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    public final /* synthetic */ Future submit(Callable callable) {
        return (zzfxa) super.submit(callable);
    }

    @Override // com.google.android.gms.internal.ads.zzfxb
    public final zzfxa<?> zza(Runnable runnable) {
        return (zzfxa) super.submit(runnable);
    }

    @Override // com.google.android.gms.internal.ads.zzfxb
    public final <T> zzfxa<T> zzb(Callable<T> callable) {
        return (zzfxa) super.submit(callable);
    }
}
