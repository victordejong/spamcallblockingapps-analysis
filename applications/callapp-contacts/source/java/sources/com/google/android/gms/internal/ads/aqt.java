package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aqt.class */
public final class aqt implements dsi<aqq> {

    /* renamed from: a */
    private final dsv<Context> f43056a;

    /* renamed from: b */
    private final dsv<cov> f43057b;

    /* renamed from: c */
    private final dsv<AbstractC12876rg> f43058c;

    private aqt(dsv<Context> dsvVar, dsv<cov> dsvVar2, dsv<AbstractC12876rg> dsvVar3) {
        this.f43056a = dsvVar;
        this.f43057b = dsvVar2;
        this.f43058c = dsvVar3;
    }

    /* renamed from: a */
    public static aqt m18458a(dsv<Context> dsvVar, dsv<cov> dsvVar2, dsv<AbstractC12876rg> dsvVar3) {
        return new aqt(dsvVar, dsvVar2, dsvVar3);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new aqq(this.f43056a.mo14005a(), this.f43057b.mo14005a(), this.f43058c.mo14005a());
    }
}
