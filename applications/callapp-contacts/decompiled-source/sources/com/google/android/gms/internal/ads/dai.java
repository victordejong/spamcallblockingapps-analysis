package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dai.class */
public final class dai<I, O> extends daj<I, O, daq<? super I, ? extends O>, dbt<? extends O>> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public dai(dbt<? extends I> dbtVar, daq<? super I, ? extends O> daqVar) {
        super(dbtVar, daqVar);
    }

    @Override // com.google.android.gms.internal.ads.daj
    final /* synthetic */ Object a(Object obj, Object obj2) throws Exception {
        daq daqVar = (daq) obj;
        dbt<O> zzf = daqVar.zzf(obj2);
        cyg.a(zzf, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", daqVar);
        return zzf;
    }

    @Override // com.google.android.gms.internal.ads.daj
    final /* synthetic */ void a(Object obj) {
        a((dbt) ((dbt) obj));
    }
}
