package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dax.class */
public final class dax extends daw<V> {

    /* renamed from: a */
    private final Callable<V> f46908a;

    /* renamed from: b */
    private final /* synthetic */ dau f46909b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public dax(dau dauVar, Callable<V> callable, Executor executor) {
        super(dauVar, executor);
        this.f46909b = dauVar;
        this.f46908a = (Callable) cyg.m17060a(callable);
    }

    @Override // com.google.android.gms.internal.ads.daw
    /* renamed from: a */
    final void mo16913a(V v) {
        this.f46909b.mo16881b((dau) v);
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [V, java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.dbp
    /* renamed from: c */
    final V mo16873c() throws Exception {
        return this.f46908a.call();
    }

    @Override // com.google.android.gms.internal.ads.dbp
    /* renamed from: d */
    final String mo16872d() {
        return this.f46908a.toString();
    }
}
