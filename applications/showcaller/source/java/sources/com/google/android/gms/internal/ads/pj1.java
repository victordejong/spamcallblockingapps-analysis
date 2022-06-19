package com.google.android.gms.internal.ads;

import java.lang.ref.WeakReference;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/pj1.class */
final class pj1<T> implements n20<Object> {

    /* renamed from: a */
    private final WeakReference<T> f28026a;

    /* renamed from: b */
    private final String f28027b;

    /* renamed from: c */
    private final n20<T> f28028c;

    /* renamed from: d */
    final /* synthetic */ qj1 f28029d;

    public /* synthetic */ pj1(qj1 qj1Var, WeakReference weakReference, String str, n20 n20Var, nj1 nj1Var) {
        this.f28029d = qj1Var;
        this.f28026a = weakReference;
        this.f28027b = str;
        this.f28028c = n20Var;
    }

    @Override // com.google.android.gms.internal.ads.n20
    /* renamed from: a */
    public final void mo8404a(Object obj, Map<String, String> map) {
        T t = this.f28026a.get();
        if (t == null) {
            this.f28029d.m11875f(this.f28027b, this);
        } else {
            this.f28028c.mo8404a(t, map);
        }
    }
}
