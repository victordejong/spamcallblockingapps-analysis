package com.google.android.gms.internal.ads;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdym.class */
public abstract class zzdym<V> extends zzdwi implements Future<V> {
    /* renamed from: b */
    public abstract Future<? extends V> mo12998a();

    public boolean cancel(boolean z) {
        return mo12998a().cancel(z);
    }

    @Override // java.util.concurrent.Future
    public V get() throws InterruptedException, ExecutionException {
        return (V) mo12998a().get();
    }

    @Override // java.util.concurrent.Future
    public V get(long j, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        return (V) mo12998a().get(j, timeUnit);
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return mo12998a().isCancelled();
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return mo12998a().isDone();
    }
}
