package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/baa.class */
public final class baa implements dsi<Set<ayi<ayb>>> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<bat> f24067a;

    private baa(dsv<bat> dsvVar) {
        this.f24067a = dsvVar;
    }

    public static baa a(dsv<bat> dsvVar) {
        return new baa(dsvVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return (Set) dso.b(Collections.singleton(ayi.a(this.f24067a.a(), zd.f)));
    }
}
