package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/crm.class */
public final class crm<V> {

    /* renamed from: a */
    private final boolean f13611a;

    /* renamed from: b */
    private final cpc<crt<? extends V>> f13612b;

    private crm(boolean z, cpc<crt<? extends V>> cpcVar) {
        this.f13611a = z;
        this.f13612b = cpcVar;
    }

    public /* synthetic */ crm(boolean z, cpc cpcVar, crj crjVar) {
        this(z, cpcVar);
    }

    /* renamed from: a */
    public final <C> crt<C> m10770a(Callable<C> callable, Executor executor) {
        return new cqu(this.f13612b, this.f13611a, executor, callable);
    }
}
