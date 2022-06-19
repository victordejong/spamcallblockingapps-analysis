package com.google.android.gms.internal.ads;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dbd.class */
public abstract class dbd<V> extends cyr implements Future<V> {
    /* renamed from: b */
    public abstract Future<? extends V> mo16906a();

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        return mo16906a().cancel(z);
    }

    @Override // java.util.concurrent.Future
    public V get() throws InterruptedException, ExecutionException {
        return mo16906a().get();
    }

    @Override // java.util.concurrent.Future
    public V get(long j, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        return mo16906a().get(j, timeUnit);
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return mo16906a().isCancelled();
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return mo16906a().isDone();
    }
}
