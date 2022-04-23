package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dax.class */
final class dax extends daw<V> {

    /* renamed from: a  reason: collision with root package name */
    private final Callable<V> f26689a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ dau f26690b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public dax(dau dauVar, Callable<V> callable, Executor executor) {
        super(dauVar, executor);
        this.f26690b = dauVar;
        this.f26689a = (Callable) cyg.a(callable);
    }

    @Override // com.google.android.gms.internal.ads.daw
    final void a(V v) {
        this.f26690b.b((dau) v);
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [V, java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.dbp
    final V c() throws Exception {
        return this.f26689a.call();
    }

    @Override // com.google.android.gms.internal.ads.dbp
    final String d() {
        return this.f26689a.toString();
    }
}
