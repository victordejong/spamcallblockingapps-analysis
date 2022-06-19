package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/afx.class */
public final class afx implements dsi<Set<ayi<axs>>> {

    /* renamed from: a */
    private final dsv<bqi> f40166a;

    /* renamed from: b */
    private final dsv<Executor> f40167b;

    public afx(dsv<bqi> dsvVar, dsv<Executor> dsvVar2) {
        this.f40166a = dsvVar;
        this.f40167b = dsvVar2;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        Set set;
        bqi mo14005a = this.f40166a.mo14005a();
        Executor mo14005a2 = this.f40167b.mo14005a();
        if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42731bo)).booleanValue()) {
            if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42933fe)).booleanValue()) {
                set = Collections.singleton(new ayi(mo14005a, mo14005a2));
                return (Set) dso.m15764b(set);
            }
        }
        set = Collections.emptySet();
        return (Set) dso.m15764b(set);
    }
}
