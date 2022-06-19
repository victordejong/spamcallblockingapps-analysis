package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/hz2.class */
public final class hz2<I, O> extends kz2<I, O, uz2<? super I, ? extends O>, r03<? extends O>> {
    public hz2(r03<? extends I> r03Var, uz2<? super I, ? extends O> uz2Var) {
        super(r03Var, uz2Var);
    }

    @Override // com.google.android.gms.internal.ads.kz2
    /* renamed from: F */
    final /* bridge */ /* synthetic */ void mo13754F(Object obj) {
        m15006w((r03) obj);
    }

    @Override // com.google.android.gms.internal.ads.kz2
    /* renamed from: G */
    final /* bridge */ /* synthetic */ Object mo13753G(Object obj, Object obj2) {
        uz2 uz2Var = (uz2) obj;
        r03<O> mo8403a = uz2Var.mo8403a(obj2);
        xu2.m9053d(mo8403a, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", uz2Var);
        return mo8403a;
    }
}
