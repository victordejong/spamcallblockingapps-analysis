package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.AbstractC12102f;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/blo.class */
public final class blo implements dsi<blm> {

    /* renamed from: a */
    private final dsv<blf> f44206a;

    /* renamed from: b */
    private final dsv<Set<bll>> f44207b;

    /* renamed from: c */
    private final dsv<AbstractC12102f> f44208c;

    private blo(dsv<blf> dsvVar, dsv<Set<bll>> dsvVar2, dsv<AbstractC12102f> dsvVar3) {
        this.f44206a = dsvVar;
        this.f44207b = dsvVar2;
        this.f44208c = dsvVar3;
    }

    /* renamed from: a */
    public static blo m17762a(dsv<blf> dsvVar, dsv<Set<bll>> dsvVar2, dsv<AbstractC12102f> dsvVar3) {
        return new blo(dsvVar, dsvVar2, dsvVar3);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new blm(this.f44206a.mo14005a(), this.f44207b.mo14005a(), this.f44208c.mo14005a());
    }
}
