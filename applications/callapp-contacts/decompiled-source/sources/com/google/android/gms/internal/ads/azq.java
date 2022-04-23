package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/azq.class */
public final class azq implements dsi<Set<ayi<avw>>> {

    /* renamed from: a  reason: collision with root package name */
    private final azj f24048a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<aqm> f24049b;

    private azq(azj azjVar, dsv<aqm> dsvVar) {
        this.f24048a = azjVar;
        this.f24049b = dsvVar;
    }

    public static azq a(azj azjVar, dsv<aqm> dsvVar) {
        return new azq(azjVar, dsvVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return (Set) dso.b(Collections.singleton(ayi.a(this.f24049b.a(), zd.f)));
    }
}
