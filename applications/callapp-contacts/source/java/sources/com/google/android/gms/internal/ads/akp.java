package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/akp.class */
public final class akp implements dsi<Set<ayi<eeg>>> {

    /* renamed from: a */
    private final ako f42322a;

    /* renamed from: b */
    private final dsv<anj> f42323b;

    public akp(ako akoVar, dsv<anj> dsvVar) {
        this.f42322a = akoVar;
        this.f42323b = dsvVar;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return (Set) dso.m15764b(Collections.singleton(new ayi(this.f42323b.mo14005a(), C13091zd.f50123f)));
    }
}
