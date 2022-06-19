package com.google.android.gms.internal.ads;

import java.lang.Throwable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cqd.class */
public final class cqd<V, X extends Throwable> extends cqe<V, X, cqt<? super X, ? extends V>, crt<? extends V>> {
    public cqd(crt<? extends V> crtVar, Class<X> cls, cqt<? super X, ? extends V> cqtVar) {
        super(crtVar, cls, cqtVar);
    }

    @Override // com.google.android.gms.internal.ads.cqe
    /* renamed from: a */
    final /* synthetic */ Object mo10825a(Object obj, Throwable th) {
        cqt cqtVar = (cqt) obj;
        crt mo7012a = cqtVar.mo7012a(th);
        cor.m10934a(mo7012a, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", cqtVar);
        return mo7012a;
    }

    @Override // com.google.android.gms.internal.ads.cqe
    /* renamed from: a */
    final /* synthetic */ void mo10826a(Object obj) {
        m10848a((crt) ((crt) obj));
    }
}
