package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/azq.class */
public final class azq implements dsi<Set<ayi<avw>>> {

    /* renamed from: a */
    private final azj f43367a;

    /* renamed from: b */
    private final dsv<aqm> f43368b;

    private azq(azj azjVar, dsv<aqm> dsvVar) {
        this.f43367a = azjVar;
        this.f43368b = dsvVar;
    }

    /* renamed from: a */
    public static azq m18300a(azj azjVar, dsv<aqm> dsvVar) {
        return new azq(azjVar, dsvVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return (Set) dso.m15764b(Collections.singleton(ayi.m18321a(this.f43368b.mo14005a(), C13091zd.f50123f)));
    }
}
