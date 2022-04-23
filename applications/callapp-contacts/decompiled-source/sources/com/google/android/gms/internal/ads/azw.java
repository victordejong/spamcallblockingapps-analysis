package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/azw.class */
public final class azw implements dsi<Set<ayi<aro>>> {

    /* renamed from: a  reason: collision with root package name */
    private final azj f24059a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<aqm> f24060b;

    private azw(azj azjVar, dsv<aqm> dsvVar) {
        this.f24059a = azjVar;
        this.f24060b = dsvVar;
    }

    public static azw a(azj azjVar, dsv<aqm> dsvVar) {
        return new azw(azjVar, dsvVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return (Set) dso.b(this.f24059a.a(this.f24060b.a()));
    }
}
