package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dai.class */
public final class dai<I, O> extends daj<I, O, daq<? super I, ? extends O>, dbt<? extends O>> {
    public dai(dbt<? extends I> dbtVar, daq<? super I, ? extends O> daqVar) {
        super(dbtVar, daqVar);
    }

    @Override // com.google.android.gms.internal.ads.daj
    /* renamed from: a */
    final /* synthetic */ Object mo16931a(Object obj, Object obj2) throws Exception {
        daq daqVar = (daq) obj;
        dbt<O> zzf = daqVar.zzf(obj2);
        cyg.m17058a(zzf, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", daqVar);
        return zzf;
    }

    @Override // com.google.android.gms.internal.ads.daj
    /* renamed from: a */
    final /* synthetic */ void mo16932a(Object obj) {
        m16963a((dbt) ((dbt) obj));
    }
}
