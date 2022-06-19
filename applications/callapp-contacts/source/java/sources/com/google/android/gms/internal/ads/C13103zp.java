package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzr;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* renamed from: com.google.android.gms.internal.ads.zp */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zp.class */
public class C13103zp<T> implements dbt<T> {
    private final dcc<T> zzekp = dcc.m16880h();

    private static boolean zzaw(boolean z) {
        if (!z) {
            zzr.zzkz().m13977b(new IllegalStateException("Provided SettableFuture with multiple values."), "SettableFuture");
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.dbt
    public void addListener(Runnable runnable, Executor executor) {
        this.zzekp.addListener(runnable, executor);
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        return this.zzekp.cancel(z);
    }

    @Override // java.util.concurrent.Future
    public T get() throws ExecutionException, InterruptedException {
        return this.zzekp.get();
    }

    @Override // java.util.concurrent.Future
    public T get(long j, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        return this.zzekp.get(j, timeUnit);
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return this.zzekp.isCancelled();
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return this.zzekp.isDone();
    }

    public final boolean set(T t) {
        return zzaw(this.zzekp.mo16881b((dcc<T>) t));
    }

    public final boolean setException(Throwable th) {
        return zzaw(this.zzekp.mo16882a(th));
    }
}
