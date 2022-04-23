package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzp;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/azu.class */
public final class azu implements dsi<ayi<zzp>> {

    /* renamed from: a  reason: collision with root package name */
    private final azj f24054a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<bar> f24055b;

    private azu(azj azjVar, dsv<bar> dsvVar) {
        this.f24054a = azjVar;
        this.f24055b = dsvVar;
    }

    public static azu a(azj azjVar, dsv<bar> dsvVar) {
        return new azu(azjVar, dsvVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return (ayi) dso.b(new ayi(this.f24055b.a(), zd.e));
    }
}
