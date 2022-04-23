package com.google.android.gms.internal.ads;

import java.lang.Throwable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dae.class */
public final class dae<V, X extends Throwable> extends dac<V, X, cxu<? super X, ? extends V>, V> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public dae(dbt<? extends V> dbtVar, Class<X> cls, cxu<? super X, ? extends V> cxuVar) {
        super(dbtVar, cls, cxuVar);
    }

    @Override // com.google.android.gms.internal.ads.dac
    final /* synthetic */ Object a(Object obj, Throwable th) throws Exception {
        return ((cxu) obj).a(th);
    }

    @Override // com.google.android.gms.internal.ads.dac
    final void a(V v) {
        b((dae<V, X>) v);
    }
}
