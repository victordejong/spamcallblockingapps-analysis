package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bku.class */
public final class bku implements dsi<bkv> {

    /* renamed from: a */
    private final dsv<Context> f44155a;

    /* renamed from: b */
    private final dsv<cpz> f44156b;

    /* renamed from: c */
    private final dsv<bli> f44157c;

    /* renamed from: d */
    private final dsv<cpk> f44158d;

    /* renamed from: e */
    private final dsv<cov> f44159e;

    /* renamed from: f */
    private final dsv<brs> f44160f;

    private bku(dsv<Context> dsvVar, dsv<cpz> dsvVar2, dsv<bli> dsvVar3, dsv<cpk> dsvVar4, dsv<cov> dsvVar5, dsv<brs> dsvVar6) {
        this.f44155a = dsvVar;
        this.f44156b = dsvVar2;
        this.f44157c = dsvVar3;
        this.f44158d = dsvVar4;
        this.f44159e = dsvVar5;
        this.f44160f = dsvVar6;
    }

    /* renamed from: a */
    public static bku m17783a(dsv<Context> dsvVar, dsv<cpz> dsvVar2, dsv<bli> dsvVar3, dsv<cpk> dsvVar4, dsv<cov> dsvVar5, dsv<brs> dsvVar6) {
        return new bku(dsvVar, dsvVar2, dsvVar3, dsvVar4, dsvVar5, dsvVar6);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new bkv(this.f44155a.mo14005a(), this.f44156b.mo14005a(), this.f44157c.mo14005a(), this.f44158d.mo14005a(), this.f44159e.mo14005a(), this.f44160f.mo14005a());
    }
}
