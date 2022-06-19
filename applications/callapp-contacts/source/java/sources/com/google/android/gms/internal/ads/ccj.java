package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ccj.class */
public final class ccj implements dsi<cch> {

    /* renamed from: a */
    private final dsv<cds<che>> f45514a;

    /* renamed from: b */
    private final dsv<cpo> f45515b;

    /* renamed from: c */
    private final dsv<Context> f45516c;

    /* renamed from: d */
    private final dsv<C13064yd> f45517d;

    private ccj(dsv<cds<che>> dsvVar, dsv<cpo> dsvVar2, dsv<Context> dsvVar3, dsv<C13064yd> dsvVar4) {
        this.f45514a = dsvVar;
        this.f45515b = dsvVar2;
        this.f45516c = dsvVar3;
        this.f45517d = dsvVar4;
    }

    /* renamed from: a */
    public static ccj m17503a(dsv<cds<che>> dsvVar, dsv<cpo> dsvVar2, dsv<Context> dsvVar3, dsv<C13064yd> dsvVar4) {
        return new ccj(dsvVar, dsvVar2, dsvVar3, dsvVar4);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new cch(this.f45514a.mo14005a(), this.f45515b.mo14005a(), this.f45516c.mo14005a(), this.f45517d.mo14005a());
    }
}
