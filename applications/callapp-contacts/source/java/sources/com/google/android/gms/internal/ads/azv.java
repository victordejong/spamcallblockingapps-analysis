package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/azv.class */
public final class azv implements dsi<C13016wl> {

    /* renamed from: a */
    private final azj f43375a;

    /* renamed from: b */
    private final dsv<Context> f43376b;

    /* renamed from: c */
    private final dsv<cpo> f43377c;

    private azv(azj azjVar, dsv<Context> dsvVar, dsv<cpo> dsvVar2) {
        this.f43375a = azjVar;
        this.f43376b = dsvVar;
        this.f43377c = dsvVar2;
    }

    /* renamed from: a */
    public static azv m18296a(azj azjVar, dsv<Context> dsvVar, dsv<cpo> dsvVar2) {
        return new azv(azjVar, dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return (C13016wl) dso.m15764b(new C13016wl(this.f43376b.mo14005a(), this.f43377c.mo14005a().f46326f));
    }
}
