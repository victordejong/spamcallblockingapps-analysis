package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/afx.class */
public final class afx implements dsi<Set<ayi<axs>>> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<bqi> f23236a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<Executor> f23237b;

    public afx(dsv<bqi> dsvVar, dsv<Executor> dsvVar2) {
        this.f23236a = dsvVar;
        this.f23237b = dsvVar2;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        Set set;
        bqi a2 = this.f23236a.a();
        Executor a3 = this.f23237b.a();
        if (((Boolean) ekb.e().a(aq.bo)).booleanValue()) {
            if (((Boolean) ekb.e().a(aq.fe)).booleanValue()) {
                set = Collections.singleton(new ayi(a2, a3));
                return (Set) dso.b(set);
            }
        }
        set = Collections.emptySet();
        return (Set) dso.b(set);
    }
}
