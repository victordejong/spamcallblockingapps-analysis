package com.google.android.gms.internal.ads;

import java.lang.Throwable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ry2.class */
public final class ry2<V, X extends Throwable> extends ty2<V, X, uz2<? super X, ? extends V>, r03<? extends V>> {
    public ry2(r03<? extends V> r03Var, Class<X> cls, uz2<? super X, ? extends V> uz2Var) {
        super(r03Var, cls, uz2Var);
    }

    @Override // com.google.android.gms.internal.ads.ty2
    /* renamed from: F */
    final /* bridge */ /* synthetic */ void mo10471F(Object obj) {
        m15006w((r03) obj);
    }

    @Override // com.google.android.gms.internal.ads.ty2
    /* renamed from: G */
    final /* bridge */ /* synthetic */ Object mo10470G(Object obj, Throwable th) {
        uz2 uz2Var = (uz2) obj;
        r03 mo8403a = uz2Var.mo8403a(th);
        xu2.m9053d(mo8403a, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", uz2Var);
        return mo8403a;
    }
}
