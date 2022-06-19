package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dbm.class */
public final class dbm<V> {

    /* renamed from: a */
    private final boolean f46918a;

    /* renamed from: b */
    private final cyz<dbt<? extends V>> f46919b;

    private dbm(boolean z, cyz<dbt<? extends V>> cyzVar) {
        this.f46918a = z;
        this.f46919b = cyzVar;
    }

    public /* synthetic */ dbm(boolean z, cyz cyzVar, dbk dbkVar) {
        this(z, cyzVar);
    }

    /* renamed from: a */
    public final <C> dbt<C> m16893a(Callable<C> callable, Executor executor) {
        return new dau(this.f46919b, this.f46918a, executor, callable);
    }
}
