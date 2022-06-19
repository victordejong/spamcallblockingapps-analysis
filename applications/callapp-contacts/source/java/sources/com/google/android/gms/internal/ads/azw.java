package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/azw.class */
public final class azw implements dsi<Set<ayi<aro>>> {

    /* renamed from: a */
    private final azj f43378a;

    /* renamed from: b */
    private final dsv<aqm> f43379b;

    private azw(azj azjVar, dsv<aqm> dsvVar) {
        this.f43378a = azjVar;
        this.f43379b = dsvVar;
    }

    /* renamed from: a */
    public static azw m18295a(azj azjVar, dsv<aqm> dsvVar) {
        return new azw(azjVar, dsvVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return (Set) dso.m15764b(this.f43378a.mo17568a(this.f43379b.mo14005a()));
    }
}
