package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dch.class */
public final class dch extends dbp<V> {

    /* renamed from: a  reason: collision with root package name */
    private final Callable<V> f26720a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ dcf f26721b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dch(dcf dcfVar, Callable<V> callable) {
        this.f26721b = dcfVar;
        this.f26720a = (Callable) cyg.a(callable);
    }

    @Override // com.google.android.gms.internal.ads.dbp
    final void a(V v, Throwable th) {
        if (th == null) {
            this.f26721b.b((dcf) v);
        } else {
            this.f26721b.a(th);
        }
    }

    @Override // com.google.android.gms.internal.ads.dbp
    final boolean a() {
        return this.f26721b.isDone();
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [V, java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.dbp
    final V c() throws Exception {
        return this.f26720a.call();
    }

    @Override // com.google.android.gms.internal.ads.dbp
    final String d() {
        return this.f26720a.toString();
    }
}
