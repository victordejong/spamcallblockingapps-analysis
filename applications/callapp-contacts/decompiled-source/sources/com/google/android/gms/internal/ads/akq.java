package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/akq.class */
public final class akq implements dsi<Set<ayi<atb>>> {

    /* renamed from: a  reason: collision with root package name */
    private final ako f23503a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<anj> f23504b;

    public akq(ako akoVar, dsv<anj> dsvVar) {
        this.f23503a = akoVar;
        this.f23504b = dsvVar;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return (Set) dso.b(Collections.singleton(new ayi(this.f23504b.a(), zd.f)));
    }
}
