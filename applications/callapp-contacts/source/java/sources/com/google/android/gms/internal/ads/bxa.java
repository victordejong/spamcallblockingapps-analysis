package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bxa.class */
public final class bxa implements dsi<bwp> {

    /* renamed from: a */
    private final dsv<Context> f44996a;

    /* renamed from: b */
    private final dsv<zzbar> f44997b;

    /* renamed from: c */
    private final dsv<cpo> f44998c;

    /* renamed from: d */
    private final dsv<Executor> f44999d;

    /* renamed from: e */
    private final dsv<bhx> f45000e;

    /* renamed from: f */
    private final dsv<bif> f45001f;

    /* renamed from: g */
    private final dsv<C12612hn> f45002g;

    public bxa(dsv<Context> dsvVar, dsv<zzbar> dsvVar2, dsv<cpo> dsvVar3, dsv<Executor> dsvVar4, dsv<bhx> dsvVar5, dsv<bif> dsvVar6, dsv<C12612hn> dsvVar7) {
        this.f44996a = dsvVar;
        this.f44997b = dsvVar2;
        this.f44998c = dsvVar3;
        this.f44999d = dsvVar4;
        this.f45000e = dsvVar5;
        this.f45001f = dsvVar6;
        this.f45002g = dsvVar7;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new bwp(this.f44996a.mo14005a(), this.f44997b.mo14005a(), this.f44998c.mo14005a(), this.f44999d.mo14005a(), this.f45000e.mo14005a(), this.f45001f.mo14005a(), this.f45002g.mo14005a());
    }
}
