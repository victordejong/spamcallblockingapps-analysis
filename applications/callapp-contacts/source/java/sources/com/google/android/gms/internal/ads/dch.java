package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dch.class */
public final class dch extends dbp<V> {

    /* renamed from: a */
    private final Callable<V> f46939a;

    /* renamed from: b */
    private final /* synthetic */ dcf f46940b;

    public dch(dcf dcfVar, Callable<V> callable) {
        this.f46940b = dcfVar;
        this.f46939a = (Callable) cyg.m17060a(callable);
    }

    @Override // com.google.android.gms.internal.ads.dbp
    /* renamed from: a */
    final void mo16874a(V v, Throwable th) {
        if (th == null) {
            this.f46940b.mo16881b((dcf) v);
        } else {
            this.f46940b.mo16882a(th);
        }
    }

    @Override // com.google.android.gms.internal.ads.dbp
    /* renamed from: a */
    final boolean mo16875a() {
        return this.f46940b.isDone();
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [V, java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.dbp
    /* renamed from: c */
    final V mo16873c() throws Exception {
        return this.f46939a.call();
    }

    @Override // com.google.android.gms.internal.ads.dbp
    /* renamed from: d */
    final String mo16872d() {
        return this.f46939a.toString();
    }
}
