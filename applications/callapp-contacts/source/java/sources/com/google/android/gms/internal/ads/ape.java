package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.AbstractC12102f;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ape.class */
public final class ape implements dsi<apf> {

    /* renamed from: a */
    private final dsv<AbstractC12102f> f42565a;

    /* renamed from: b */
    private final dsv<C13063yc> f42566b;

    private ape(dsv<AbstractC12102f> dsvVar, dsv<C13063yc> dsvVar2) {
        this.f42565a = dsvVar;
        this.f42566b = dsvVar2;
    }

    /* renamed from: a */
    public static ape m18495a(dsv<AbstractC12102f> dsvVar, dsv<C13063yc> dsvVar2) {
        return new ape(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new apf(this.f42565a.mo14005a(), this.f42566b.mo14005a());
    }
}
