package com.google.android.gms.internal.ads;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/csu.class */
public final class csu<E, V> implements dbt<V> {

    /* renamed from: a */
    final E f46493a;

    /* renamed from: b */
    final String f46494b;

    /* renamed from: c */
    private final dbt<V> f46495c;

    public csu(E e, String str, dbt<V> dbtVar) {
        this.f46493a = e;
        this.f46494b = str;
        this.f46495c = dbtVar;
    }

    @Override // com.google.android.gms.internal.ads.dbt
    public final void addListener(Runnable runnable, Executor executor) {
        this.f46495c.addListener(runnable, executor);
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        return this.f46495c.cancel(z);
    }

    @Override // java.util.concurrent.Future
    public final V get() throws InterruptedException, ExecutionException {
        return this.f46495c.get();
    }

    @Override // java.util.concurrent.Future
    public final V get(long j, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        return this.f46495c.get(j, timeUnit);
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.f46495c.isCancelled();
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return this.f46495c.isDone();
    }

    public final String toString() {
        String str = this.f46494b;
        int identityHashCode = System.identityHashCode(this);
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 12);
        sb.append(str);
        sb.append("@");
        sb.append(identityHashCode);
        return sb.toString();
    }
}
