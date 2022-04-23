package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dbm.class */
public final class dbm<V> {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f26699a;

    /* renamed from: b  reason: collision with root package name */
    private final cyz<dbt<? extends V>> f26700b;

    private dbm(boolean z, cyz<dbt<? extends V>> cyzVar) {
        this.f26699a = z;
        this.f26700b = cyzVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ dbm(boolean z, cyz cyzVar, dbk dbkVar) {
        this(z, cyzVar);
    }

    public final <C> dbt<C> a(Callable<C> callable, Executor executor) {
        return new dau(this.f26700b, this.f26699a, executor, callable);
    }
}
