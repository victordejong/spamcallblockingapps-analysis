package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdrs;
import java.util.Collections;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdry.class */
public final class zzdry {

    /* renamed from: a */
    public final E f27778a;

    /* renamed from: b */
    public final /* synthetic */ zzdru f27779b;

    public zzdry(zzdru zzdruVar, E e) {
        this.f27779b = zzdruVar;
        this.f27778a = e;
    }

    /* renamed from: a */
    public final zzdsa<?> m13267a(final zzdrs zzdrsVar, zzdzb zzdzbVar) {
        return m13264a(new Callable(zzdrsVar) { // from class: c.d.b.d.g.a.jz

            /* renamed from: a */
            public final zzdrs f13824a;

            {
                this.f13824a = zzdrsVar;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                this.f13824a.run();
                return null;
            }
        }, zzdzbVar);
    }

    /* renamed from: a */
    public final <O> zzdsa<O> m13266a(zzdzc<O> zzdzcVar) {
        zzdzc zzdzcVar2;
        zzdru zzdruVar = this.f27779b;
        E e = this.f27778a;
        zzdzcVar2 = zzdru.f27771d;
        return new zzdsa<>(zzdruVar, e, zzdzcVar2, Collections.emptyList(), zzdzcVar);
    }

    /* renamed from: a */
    public final <O> zzdsa<O> m13265a(Callable<O> callable) {
        zzdzb zzdzbVar;
        zzdzbVar = this.f27779b.f27772a;
        return m13264a(callable, zzdzbVar);
    }

    /* renamed from: a */
    public final <O> zzdsa<O> m13264a(Callable<O> callable, zzdzb zzdzbVar) {
        zzdzc zzdzcVar;
        zzdru zzdruVar = this.f27779b;
        E e = this.f27778a;
        zzdzcVar = zzdru.f27771d;
        return new zzdsa<>(zzdruVar, e, zzdzcVar, Collections.emptyList(), zzdzbVar.mo12977a(callable));
    }
}
