package com.google.android.gms.internal.ads;

import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cql.class */
public final class cql<I, O> extends cqh<I, O, cqt<? super I, ? extends O>, crt<? extends O>> {
    public cql(crt<? extends I> crtVar, cqt<? super I, ? extends O> cqtVar) {
        super(crtVar, cqtVar);
    }

    @Override // com.google.android.gms.internal.ads.cqh
    /* renamed from: a */
    final /* synthetic */ Object mo10821a(Object obj, @NullableDecl Object obj2) {
        cqt cqtVar = (cqt) obj;
        crt<O> mo7012a = cqtVar.mo7012a(obj2);
        cor.m10934a(mo7012a, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", cqtVar);
        return mo7012a;
    }

    @Override // com.google.android.gms.internal.ads.cqh
    /* renamed from: a */
    final /* synthetic */ void mo10822a(Object obj) {
        m10848a((crt) ((crt) obj));
    }
}
