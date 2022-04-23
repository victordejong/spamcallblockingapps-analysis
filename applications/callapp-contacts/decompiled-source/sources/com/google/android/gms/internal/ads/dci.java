package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dci.class */
public final class dci extends dbp<dbt<V>> {

    /* renamed from: a  reason: collision with root package name */
    private final dar<V> f26722a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ dcf f26723b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dci(dcf dcfVar, dar<V> darVar) {
        this.f26723b = dcfVar;
        this.f26722a = (dar) cyg.a(darVar);
    }

    @Override // com.google.android.gms.internal.ads.dbp
    final /* synthetic */ void a(Object obj, Throwable th) {
        dbt dbtVar = (dbt) obj;
        if (th == null) {
            this.f26723b.a(dbtVar);
        } else {
            this.f26723b.a(th);
        }
    }

    @Override // com.google.android.gms.internal.ads.dbp
    final boolean a() {
        return this.f26723b.isDone();
    }

    @Override // com.google.android.gms.internal.ads.dbp
    final /* synthetic */ Object c() throws Exception {
        return (dbt) cyg.a(this.f26722a.a(), "AsyncCallable.call returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", this.f26722a);
    }

    @Override // com.google.android.gms.internal.ads.dbp
    final String d() {
        return this.f26722a.toString();
    }
}
