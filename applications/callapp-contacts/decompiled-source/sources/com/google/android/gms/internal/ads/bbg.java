package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bbg.class */
public final class bbg implements dsi<Set<String>> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<bcy> f24114a;

    public bbg(dsv<bcy> dsvVar) {
        this.f24114a = dsvVar;
    }

    public static Set<String> a(bcy bcyVar) {
        return (Set) dso.b(bcyVar.f24196d != null ? Collections.singleton("banner") : Collections.emptySet());
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return a(this.f24114a.a());
    }
}
