package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bdi.class */
public final class bdi implements dsi<C13016wl> {

    /* renamed from: a */
    private final bde f43628a;

    /* renamed from: b */
    private final dsv<Context> f43629b;

    /* renamed from: c */
    private final dsv<cpo> f43630c;

    private bdi(bde bdeVar, dsv<Context> dsvVar, dsv<cpo> dsvVar2) {
        this.f43628a = bdeVar;
        this.f43629b = dsvVar;
        this.f43630c = dsvVar2;
    }

    /* renamed from: a */
    public static bdi m18129a(bde bdeVar, dsv<Context> dsvVar, dsv<cpo> dsvVar2) {
        return new bdi(bdeVar, dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return (C13016wl) dso.m15764b(new C13016wl(this.f43629b.mo14005a(), this.f43630c.mo14005a().f46326f));
    }
}
