package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cco.class */
public final class cco implements dsi<ccm> {

    /* renamed from: a */
    private final dsv<Set<String>> f45522a;

    private cco(dsv<Set<String>> dsvVar) {
        this.f45522a = dsvVar;
    }

    /* renamed from: a */
    public static ccm m17501a(Set<String> set) {
        return new ccm(set);
    }

    /* renamed from: a */
    public static cco m17502a(dsv<Set<String>> dsvVar) {
        return new cco(dsvVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return m17501a(this.f45522a.mo14005a());
    }
}
