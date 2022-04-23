package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ame.class */
public final class ame implements dsi<Set<ayi<atb>>> {

    /* renamed from: a  reason: collision with root package name */
    private final alx f23568a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<anj> f23569b;

    public ame(alx alxVar, dsv<anj> dsvVar) {
        this.f23568a = alxVar;
        this.f23569b = dsvVar;
    }

    public static Set<ayi<atb>> a(anj anjVar) {
        return (Set) dso.b(Collections.singleton(new ayi(anjVar, zd.f)));
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return a(this.f23569b.a());
    }
}
