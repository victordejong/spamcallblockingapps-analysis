package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bdi.class */
public final class bdi implements dsi<wl> {

    /* renamed from: a  reason: collision with root package name */
    private final bde f24207a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<Context> f24208b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<cpo> f24209c;

    private bdi(bde bdeVar, dsv<Context> dsvVar, dsv<cpo> dsvVar2) {
        this.f24207a = bdeVar;
        this.f24208b = dsvVar;
        this.f24209c = dsvVar2;
    }

    public static bdi a(bde bdeVar, dsv<Context> dsvVar, dsv<cpo> dsvVar2) {
        return new bdi(bdeVar, dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return (wl) dso.b(new wl(this.f24208b.a(), this.f24209c.a().f));
    }
}
