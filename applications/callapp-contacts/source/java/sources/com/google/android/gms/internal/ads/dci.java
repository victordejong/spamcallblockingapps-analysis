package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dci.class */
public final class dci extends dbp<dbt<V>> {

    /* renamed from: a */
    private final dar<V> f46941a;

    /* renamed from: b */
    private final /* synthetic */ dcf f46942b;

    public dci(dcf dcfVar, dar<V> darVar) {
        this.f46942b = dcfVar;
        this.f46941a = (dar) cyg.m17060a(darVar);
    }

    @Override // com.google.android.gms.internal.ads.dbp
    /* renamed from: a */
    final /* synthetic */ void mo16874a(Object obj, Throwable th) {
        dbt dbtVar = (dbt) obj;
        if (th == null) {
            this.f46942b.m16963a(dbtVar);
        } else {
            this.f46942b.mo16882a(th);
        }
    }

    @Override // com.google.android.gms.internal.ads.dbp
    /* renamed from: a */
    final boolean mo16875a() {
        return this.f46942b.isDone();
    }

    @Override // com.google.android.gms.internal.ads.dbp
    /* renamed from: c */
    final /* synthetic */ Object mo16873c() throws Exception {
        return (dbt) cyg.m17058a(this.f46941a.mo16921a(), "AsyncCallable.call returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", this.f46941a);
    }

    @Override // com.google.android.gms.internal.ads.dbp
    /* renamed from: d */
    final String mo16872d() {
        return this.f46941a.toString();
    }
}
