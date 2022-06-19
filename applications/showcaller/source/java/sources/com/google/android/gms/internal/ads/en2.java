package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/en2.class */
public final class en2<E, V> implements r03<V> {

    /* renamed from: d */
    private final E f22294d;

    /* renamed from: e */
    private final String f22295e;

    /* renamed from: f */
    private final r03<V> f22296f;

    public en2(E e, String str, r03<V> r03Var) {
        this.f22294d = e;
        this.f22295e = str;
        this.f22296f = r03Var;
    }

    /* renamed from: a */
    public final E m15419a() {
        return this.f22294d;
    }

    /* renamed from: b */
    public final String m15418b() {
        return this.f22295e;
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        return this.f22296f.cancel(z);
    }

    @Override // com.google.android.gms.internal.ads.r03
    /* renamed from: d */
    public final void mo10015d(Runnable runnable, Executor executor) {
        this.f22296f.mo10015d(runnable, executor);
    }

    @Override // java.util.concurrent.Future
    public final V get() {
        return this.f22296f.get();
    }

    @Override // java.util.concurrent.Future
    public final V get(long j, TimeUnit timeUnit) {
        return this.f22296f.get(j, timeUnit);
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.f22296f.isCancelled();
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return this.f22296f.isDone();
    }

    public final String toString() {
        String str = this.f22295e;
        int identityHashCode = System.identityHashCode(this);
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 12);
        sb.append(str);
        sb.append("@");
        sb.append(identityHashCode);
        return sb.toString();
    }
}
