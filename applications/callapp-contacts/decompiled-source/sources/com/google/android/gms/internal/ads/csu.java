package com.google.android.gms.internal.ads;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/csu.class */
public final class csu<E, V> implements dbt<V> {

    /* renamed from: a  reason: collision with root package name */
    final E f26349a;

    /* renamed from: b  reason: collision with root package name */
    final String f26350b;

    /* renamed from: c  reason: collision with root package name */
    private final dbt<V> f26351c;

    public csu(E e, String str, dbt<V> dbtVar) {
        this.f26349a = e;
        this.f26350b = str;
        this.f26351c = dbtVar;
    }

    @Override // com.google.android.gms.internal.ads.dbt
    public final void addListener(Runnable runnable, Executor executor) {
        this.f26351c.addListener(runnable, executor);
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        return this.f26351c.cancel(z);
    }

    @Override // java.util.concurrent.Future
    public final V get() throws InterruptedException, ExecutionException {
        return this.f26351c.get();
    }

    @Override // java.util.concurrent.Future
    public final V get(long j, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        return this.f26351c.get(j, timeUnit);
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.f26351c.isCancelled();
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return this.f26351c.isDone();
    }

    public final String toString() {
        String str = this.f26350b;
        int identityHashCode = System.identityHashCode(this);
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 12);
        sb.append(str);
        sb.append("@");
        sb.append(identityHashCode);
        return sb.toString();
    }
}
