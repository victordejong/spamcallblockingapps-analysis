package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/azo.class */
public final class azo implements dsi<Set<ayi<asd>>> {

    /* renamed from: a  reason: collision with root package name */
    private final azj f24042a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<aqm> f24043b;

    private azo(azj azjVar, dsv<aqm> dsvVar) {
        this.f24042a = azjVar;
        this.f24043b = dsvVar;
    }

    public static azo a(azj azjVar, dsv<aqm> dsvVar) {
        return new azo(azjVar, dsvVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return (Set) dso.b(Collections.singleton(ayi.a(this.f24043b.a(), zd.f)));
    }
}
