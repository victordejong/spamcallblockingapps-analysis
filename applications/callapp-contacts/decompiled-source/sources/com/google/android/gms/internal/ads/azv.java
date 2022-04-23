package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/azv.class */
public final class azv implements dsi<wl> {

    /* renamed from: a  reason: collision with root package name */
    private final azj f24056a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<Context> f24057b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<cpo> f24058c;

    private azv(azj azjVar, dsv<Context> dsvVar, dsv<cpo> dsvVar2) {
        this.f24056a = azjVar;
        this.f24057b = dsvVar;
        this.f24058c = dsvVar2;
    }

    public static azv a(azj azjVar, dsv<Context> dsvVar, dsv<cpo> dsvVar2) {
        return new azv(azjVar, dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return (wl) dso.b(new wl(this.f24057b.a(), this.f24058c.a().f));
    }
}
