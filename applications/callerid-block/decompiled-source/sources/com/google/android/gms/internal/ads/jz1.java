package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/jz1.class */
public final class jz1<V> {

    /* renamed from: a */
    private final boolean f6948a;

    /* renamed from: b */
    private final zzede<rz1<? extends V>> f6949b;

    /* synthetic */ jz1(boolean z, zzede zzedeVar, hz1 hz1Var) {
        this.f6948a = z;
        this.f6949b = zzedeVar;
    }

    /* renamed from: a */
    public final <C> rz1<C> m6894a(Callable<C> callable, Executor executor) {
        return new zy1(this.f6949b, this.f6948a, executor, callable);
    }
}
