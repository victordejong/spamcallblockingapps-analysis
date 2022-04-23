package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ami.class */
public final class ami implements dsi<wl> {

    /* renamed from: a  reason: collision with root package name */
    private final alx f23578a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<Context> f23579b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<cpo> f23580c;

    public ami(alx alxVar, dsv<Context> dsvVar, dsv<cpo> dsvVar2) {
        this.f23578a = alxVar;
        this.f23579b = dsvVar;
        this.f23580c = dsvVar2;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return (wl) dso.b(new wl(this.f23579b.a(), this.f23580c.a().f));
    }
}
