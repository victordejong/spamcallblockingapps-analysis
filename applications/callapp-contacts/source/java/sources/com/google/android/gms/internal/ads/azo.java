package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/azo.class */
public final class azo implements dsi<Set<ayi<asd>>> {

    /* renamed from: a */
    private final azj f43360a;

    /* renamed from: b */
    private final dsv<aqm> f43361b;

    private azo(azj azjVar, dsv<aqm> dsvVar) {
        this.f43360a = azjVar;
        this.f43361b = dsvVar;
    }

    /* renamed from: a */
    public static azo m18302a(azj azjVar, dsv<aqm> dsvVar) {
        return new azo(azjVar, dsvVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return (Set) dso.m15764b(Collections.singleton(ayi.m18321a(this.f43361b.mo14005a(), C13091zd.f50123f)));
    }
}
