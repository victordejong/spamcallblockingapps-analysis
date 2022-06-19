package com.google.android.gms.internal.ads;

import java.lang.Throwable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/daf.class */
public final class daf<V, X extends Throwable> extends dac<V, X, daq<? super X, ? extends V>, dbt<? extends V>> {
    public daf(dbt<? extends V> dbtVar, Class<X> cls, daq<? super X, ? extends V> daqVar) {
        super(dbtVar, cls, daqVar);
    }

    @Override // com.google.android.gms.internal.ads.dac
    /* renamed from: a */
    final /* synthetic */ Object mo16969a(Object obj, Throwable th) throws Exception {
        daq daqVar = (daq) obj;
        dbt zzf = daqVar.zzf(th);
        cyg.m17058a(zzf, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", daqVar);
        return zzf;
    }

    @Override // com.google.android.gms.internal.ads.dac
    /* renamed from: a */
    final /* synthetic */ void mo16970a(Object obj) {
        m16963a((dbt) ((dbt) obj));
    }
}
