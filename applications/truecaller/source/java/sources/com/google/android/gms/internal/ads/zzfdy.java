package com.google.android.gms.internal.ads;

import com.tenor.android.core.constant.StringConstant;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfdy.class */
public final class zzfdy<E, V> implements zzfsm<V> {
    private final E zza;
    private final String zzb;
    private final zzfsm<V> zzc;

    public zzfdy(E e, String str, zzfsm<V> zzfsmVar) {
        this.zza = e;
        this.zzb = str;
        this.zzc = zzfsmVar;
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        return this.zzc.cancel(z);
    }

    @Override // java.util.concurrent.Future
    public final V get() throws InterruptedException, ExecutionException {
        return this.zzc.get();
    }

    @Override // java.util.concurrent.Future
    public final V get(long j, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        return this.zzc.get(j, timeUnit);
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.zzc.isCancelled();
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return this.zzc.isDone();
    }

    public final String toString() {
        String str = this.zzb;
        return C22128a.m8614i(new StringBuilder(String.valueOf(str).length() + 12), str, StringConstant.f9511AT, System.identityHashCode(this));
    }

    public final E zza() {
        return this.zza;
    }

    public final String zzb() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzfsm
    public final void zze(Runnable runnable, Executor executor) {
        this.zzc.zze(runnable, executor);
    }
}
