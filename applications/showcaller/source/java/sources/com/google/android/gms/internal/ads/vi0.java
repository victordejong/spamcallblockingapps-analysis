package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.C5667s;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/vi0.class */
public class vi0<T> implements r03<T> {

    /* renamed from: d */
    private final z03<T> f31190d = z03.m8633E();

    /* renamed from: b */
    private static final boolean m10017b(boolean z) {
        if (!z) {
            C5667s.m18156h().m12234l(new IllegalStateException("Provided SettableFuture with multiple values."), "SettableFuture");
        }
        return z;
    }

    /* renamed from: c */
    public final boolean m10016c(T t) {
        boolean mo8632u = this.f31190d.mo8632u(t);
        m10017b(mo8632u);
        return mo8632u;
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        return this.f31190d.cancel(z);
    }

    @Override // com.google.android.gms.internal.ads.r03
    /* renamed from: d */
    public final void mo10015d(Runnable runnable, Executor executor) {
        this.f31190d.mo10015d(runnable, executor);
    }

    /* renamed from: f */
    public final boolean m10014f(Throwable th) {
        boolean mo8631v = this.f31190d.mo8631v(th);
        m10017b(mo8631v);
        return mo8631v;
    }

    @Override // java.util.concurrent.Future
    public final T get() {
        return this.f31190d.get();
    }

    @Override // java.util.concurrent.Future
    public final T get(long j, TimeUnit timeUnit) {
        return this.f31190d.get(j, timeUnit);
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.f31190d.isCancelled();
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return this.f31190d.isDone();
    }
}
