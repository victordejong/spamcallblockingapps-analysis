package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ccj.class */
public final class ccj implements dsi<cch> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<cds<che>> f25587a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<cpo> f25588b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<Context> f25589c;

    /* renamed from: d  reason: collision with root package name */
    private final dsv<yd> f25590d;

    private ccj(dsv<cds<che>> dsvVar, dsv<cpo> dsvVar2, dsv<Context> dsvVar3, dsv<yd> dsvVar4) {
        this.f25587a = dsvVar;
        this.f25588b = dsvVar2;
        this.f25589c = dsvVar3;
        this.f25590d = dsvVar4;
    }

    public static ccj a(dsv<cds<che>> dsvVar, dsv<cpo> dsvVar2, dsv<Context> dsvVar3, dsv<yd> dsvVar4) {
        return new ccj(dsvVar, dsvVar2, dsvVar3, dsvVar4);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new cch(this.f25587a.a(), this.f25588b.a(), this.f25589c.a(), this.f25590d.a());
    }
}
