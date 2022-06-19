package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/csg.class */
public final class csg extends crp<crt<V>> {

    /* renamed from: a */
    private final cqr<V> f13636a;

    /* renamed from: b */
    private final /* synthetic */ csh f13637b;

    public csg(csh cshVar, cqr<V> cqrVar) {
        this.f13637b = cshVar;
        this.f13636a = (cqr) cor.m10936a(cqrVar);
    }

    @Override // com.google.android.gms.internal.ads.crp
    /* renamed from: a */
    final /* synthetic */ void mo10742a(Object obj, Throwable th) {
        crt crtVar = (crt) obj;
        if (th == null) {
            this.f13637b.m10848a(crtVar);
        } else {
            this.f13637b.mo10754a(th);
        }
    }

    @Override // com.google.android.gms.internal.ads.crp
    /* renamed from: a */
    final boolean mo10743a() {
        return this.f13637b.isDone();
    }

    @Override // com.google.android.gms.internal.ads.crp
    /* renamed from: c */
    final /* synthetic */ Object mo10741c() {
        return (crt) cor.m10934a(this.f13636a.mo10802a(), "AsyncCallable.call returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", this.f13636a);
    }

    @Override // com.google.android.gms.internal.ads.crp
    /* renamed from: d */
    final String mo10740d() {
        return this.f13636a.toString();
    }
}
