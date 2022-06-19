package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cqp.class */
public final class cqp implements dsi<cqm> {

    /* renamed from: a */
    private final dsv<Context> f46387a;

    /* renamed from: b */
    private final dsv<C13075yo> f46388b;

    private cqp(dsv<Context> dsvVar, dsv<C13075yo> dsvVar2) {
        this.f46387a = dsvVar;
        this.f46388b = dsvVar2;
    }

    /* renamed from: a */
    public static cqp m17317a(dsv<Context> dsvVar, dsv<C13075yo> dsvVar2) {
        return new cqp(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new cqm(this.f46387a.mo14005a(), this.f46388b.mo14005a());
    }
}
