package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cqp.class */
public final class cqp implements dsi<cqm> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<Context> f26265a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<yo> f26266b;

    private cqp(dsv<Context> dsvVar, dsv<yo> dsvVar2) {
        this.f26265a = dsvVar;
        this.f26266b = dsvVar2;
    }

    public static cqp a(dsv<Context> dsvVar, dsv<yo> dsvVar2) {
        return new cqp(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new cqm(this.f26265a.a(), this.f26266b.a());
    }
}
