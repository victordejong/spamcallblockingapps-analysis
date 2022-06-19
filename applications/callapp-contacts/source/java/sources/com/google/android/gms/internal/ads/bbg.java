package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bbg.class */
public final class bbg implements dsi<Set<String>> {

    /* renamed from: a */
    private final dsv<bcy> f43441a;

    public bbg(dsv<bcy> dsvVar) {
        this.f43441a = dsvVar;
    }

    /* renamed from: a */
    public static Set<String> m18250a(bcy bcyVar) {
        return (Set) dso.m15764b(bcyVar.f43611d != null ? Collections.singleton("banner") : Collections.emptySet());
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return m18250a(this.f43441a.mo14005a());
    }
}
