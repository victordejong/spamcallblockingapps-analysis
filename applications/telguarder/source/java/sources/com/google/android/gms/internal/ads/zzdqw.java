package com.google.android.gms.internal.ads;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdqw.class */
public final class zzdqw<E, V> implements zzdzw<V> {
    private final E zzhpu;
    private final String zzhpv;
    private final zzdzw<V> zzhpw;

    public zzdqw(E e, String str, zzdzw<V> zzdzwVar) {
        this.zzhpu = e;
        this.zzhpv = str;
        this.zzhpw = zzdzwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdzw
    public final void addListener(Runnable runnable, Executor executor) {
        this.zzhpw.addListener(runnable, executor);
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        return this.zzhpw.cancel(z);
    }

    @Override // java.util.concurrent.Future
    public final V get() throws InterruptedException, ExecutionException {
        return this.zzhpw.get();
    }

    @Override // java.util.concurrent.Future
    public final V get(long j, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        return this.zzhpw.get(j, timeUnit);
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.zzhpw.isCancelled();
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return this.zzhpw.isDone();
    }

    public final String toString() {
        String str = this.zzhpv;
        int identityHashCode = System.identityHashCode(this);
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 12);
        sb.append(str);
        sb.append("@");
        sb.append(identityHashCode);
        return sb.toString();
    }

    public final E zzaxh() {
        return this.zzhpu;
    }

    public final String zzaxi() {
        return this.zzhpv;
    }
}
