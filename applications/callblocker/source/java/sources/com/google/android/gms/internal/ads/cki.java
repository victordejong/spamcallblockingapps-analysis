package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cki.class */
public final class cki<E, V> implements crt<V> {

    /* renamed from: a */
    private final E f13199a;

    /* renamed from: b */
    private final String f13200b;

    /* renamed from: c */
    private final crt<V> f13201c;

    public cki(E e, String str, crt<V> crtVar) {
        this.f13199a = e;
        this.f13200b = str;
        this.f13201c = crtVar;
    }

    /* renamed from: a */
    public final E m11168a() {
        return this.f13199a;
    }

    @Override // com.google.android.gms.internal.ads.crt
    /* renamed from: a */
    public final void mo6734a(Runnable runnable, Executor executor) {
        this.f13201c.mo6734a(runnable, executor);
    }

    /* renamed from: b */
    public final String m11167b() {
        return this.f13200b;
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        return this.f13201c.cancel(z);
    }

    @Override // java.util.concurrent.Future
    public final V get() {
        return this.f13201c.get();
    }

    @Override // java.util.concurrent.Future
    public final V get(long j, TimeUnit timeUnit) {
        return this.f13201c.get(j, timeUnit);
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.f13201c.isCancelled();
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return this.f13201c.isDone();
    }

    public final String toString() {
        String str = this.f13200b;
        return new StringBuilder(String.valueOf(str).length() + 12).append(str).append("@").append(System.identityHashCode(this)).toString();
    }
}
