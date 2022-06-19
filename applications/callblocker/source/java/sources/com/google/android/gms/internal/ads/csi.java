package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/csi.class */
public final class csi extends crp<V> {

    /* renamed from: a */
    private final Callable<V> f13639a;

    /* renamed from: b */
    private final /* synthetic */ csh f13640b;

    public csi(csh cshVar, Callable<V> callable) {
        this.f13640b = cshVar;
        this.f13639a = (Callable) cor.m10936a(callable);
    }

    @Override // com.google.android.gms.internal.ads.crp
    /* renamed from: a */
    final void mo10742a(V v, Throwable th) {
        if (th == null) {
            this.f13640b.mo10753b((csh) v);
        } else {
            this.f13640b.mo10754a(th);
        }
    }

    @Override // com.google.android.gms.internal.ads.crp
    /* renamed from: a */
    final boolean mo10743a() {
        return this.f13640b.isDone();
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [V, java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.crp
    /* renamed from: c */
    final V mo10741c() {
        return this.f13639a.call();
    }

    @Override // com.google.android.gms.internal.ads.crp
    /* renamed from: d */
    final String mo10740d() {
        return this.f13639a.toString();
    }
}
