package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzf;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bds.class */
public final class bds implements dsi<bdo> {

    /* renamed from: a */
    private final dsv<zzf> f43677a;

    /* renamed from: b */
    private final dsv<cpo> f43678b;

    /* renamed from: c */
    private final dsv<bcv> f43679c;

    /* renamed from: d */
    private final dsv<bcr> f43680d;

    /* renamed from: e */
    private final dsv<bdw> f43681e;

    /* renamed from: f */
    private final dsv<bef> f43682f;

    /* renamed from: g */
    private final dsv<Executor> f43683g;

    /* renamed from: h */
    private final dsv<Executor> f43684h;

    /* renamed from: i */
    private final dsv<bcm> f43685i;

    private bds(dsv<zzf> dsvVar, dsv<cpo> dsvVar2, dsv<bcv> dsvVar3, dsv<bcr> dsvVar4, dsv<bdw> dsvVar5, dsv<bef> dsvVar6, dsv<Executor> dsvVar7, dsv<Executor> dsvVar8, dsv<bcm> dsvVar9) {
        this.f43677a = dsvVar;
        this.f43678b = dsvVar2;
        this.f43679c = dsvVar3;
        this.f43680d = dsvVar4;
        this.f43681e = dsvVar5;
        this.f43682f = dsvVar6;
        this.f43683g = dsvVar7;
        this.f43684h = dsvVar8;
        this.f43685i = dsvVar9;
    }

    /* renamed from: a */
    public static bds m18120a(dsv<zzf> dsvVar, dsv<cpo> dsvVar2, dsv<bcv> dsvVar3, dsv<bcr> dsvVar4, dsv<bdw> dsvVar5, dsv<bef> dsvVar6, dsv<Executor> dsvVar7, dsv<Executor> dsvVar8, dsv<bcm> dsvVar9) {
        return new bds(dsvVar, dsvVar2, dsvVar3, dsvVar4, dsvVar5, dsvVar6, dsvVar7, dsvVar8, dsvVar9);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new bdo(this.f43677a.mo14005a(), this.f43678b.mo14005a(), this.f43679c.mo14005a(), this.f43680d.mo14005a(), this.f43681e.mo14005a(), this.f43682f.mo14005a(), this.f43683g.mo14005a(), this.f43684h.mo14005a(), this.f43685i.mo14005a());
    }
}
