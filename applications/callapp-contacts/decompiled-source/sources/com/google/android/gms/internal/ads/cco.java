package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cco.class */
public final class cco implements dsi<ccm> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<Set<String>> f25595a;

    private cco(dsv<Set<String>> dsvVar) {
        this.f25595a = dsvVar;
    }

    public static ccm a(Set<String> set) {
        return new ccm(set);
    }

    public static cco a(dsv<Set<String>> dsvVar) {
        return new cco(dsvVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return a(this.f25595a.a());
    }
}
