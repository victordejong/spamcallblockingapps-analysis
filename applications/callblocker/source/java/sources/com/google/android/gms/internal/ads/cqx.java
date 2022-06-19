package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cqx.class */
public final class cqx extends cqw<V> {

    /* renamed from: b */
    private final Callable<V> f13600b;

    /* renamed from: c */
    private final /* synthetic */ cqu f13601c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cqx(cqu cquVar, Callable<V> callable, Executor executor) {
        super(cquVar, executor);
        this.f13601c = cquVar;
        this.f13600b = (Callable) cor.m10936a(callable);
    }

    @Override // com.google.android.gms.internal.ads.cqw
    /* renamed from: a */
    final void mo10794a(V v) {
        this.f13601c.mo10753b((cqu) v);
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [V, java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.crp
    /* renamed from: c */
    final V mo10741c() {
        this.f13597a = false;
        return this.f13600b.call();
    }

    @Override // com.google.android.gms.internal.ads.crp
    /* renamed from: d */
    final String mo10740d() {
        return this.f13600b.toString();
    }
}
