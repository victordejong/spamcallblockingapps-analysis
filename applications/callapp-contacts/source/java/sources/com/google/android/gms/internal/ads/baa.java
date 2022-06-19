package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/baa.class */
public final class baa implements dsi<Set<ayi<ayb>>> {

    /* renamed from: a */
    private final dsv<bat> f43386a;

    private baa(dsv<bat> dsvVar) {
        this.f43386a = dsvVar;
    }

    /* renamed from: a */
    public static baa m18285a(dsv<bat> dsvVar) {
        return new baa(dsvVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return (Set) dso.m15764b(Collections.singleton(ayi.m18321a(this.f43386a.mo14005a(), C13091zd.f50123f)));
    }
}
