package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ame.class */
public final class ame implements dsi<Set<ayi<atb>>> {

    /* renamed from: a */
    private final alx f42414a;

    /* renamed from: b */
    private final dsv<anj> f42415b;

    public ame(alx alxVar, dsv<anj> dsvVar) {
        this.f42414a = alxVar;
        this.f42415b = dsvVar;
    }

    /* renamed from: a */
    public static Set<ayi<atb>> m18564a(anj anjVar) {
        return (Set) dso.m15764b(Collections.singleton(new ayi(anjVar, C13091zd.f50123f)));
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return m18564a(this.f42415b.mo14005a());
    }
}
