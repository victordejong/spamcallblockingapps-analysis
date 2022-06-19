package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.C2341q;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* renamed from: com.google.android.gms.internal.ads.yo */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/yo.class */
public class C3658yo<T> implements crt<T> {

    /* renamed from: a */
    private final csa<T> f17654a = csa.m10752h();

    /* renamed from: a */
    private static boolean m6732a(boolean z) {
        if (!z) {
            C2341q.m14740g().m7092b(new IllegalStateException("Provided SettableFuture with multiple values."), "SettableFuture");
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.crt
    /* renamed from: a */
    public void mo6734a(Runnable runnable, Executor executor) {
        this.f17654a.mo6734a(runnable, executor);
    }

    /* renamed from: a */
    public final boolean m6733a(Throwable th) {
        return m6732a(this.f17654a.mo10754a(th));
    }

    /* renamed from: b */
    public final boolean m6731b(T t) {
        return m6732a(this.f17654a.mo10753b((csa<T>) t));
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        return this.f17654a.cancel(z);
    }

    @Override // java.util.concurrent.Future
    public T get() {
        return this.f17654a.get();
    }

    @Override // java.util.concurrent.Future
    public T get(long j, TimeUnit timeUnit) {
        return this.f17654a.get(j, timeUnit);
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return this.f17654a.isCancelled();
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return this.f17654a.isDone();
    }
}
