package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzf;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bds.class */
public final class bds implements dsi<bdo> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<zzf> f24235a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<cpo> f24236b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<bcv> f24237c;

    /* renamed from: d  reason: collision with root package name */
    private final dsv<bcr> f24238d;
    private final dsv<bdw> e;
    private final dsv<bef> f;
    private final dsv<Executor> g;
    private final dsv<Executor> h;
    private final dsv<bcm> i;

    private bds(dsv<zzf> dsvVar, dsv<cpo> dsvVar2, dsv<bcv> dsvVar3, dsv<bcr> dsvVar4, dsv<bdw> dsvVar5, dsv<bef> dsvVar6, dsv<Executor> dsvVar7, dsv<Executor> dsvVar8, dsv<bcm> dsvVar9) {
        this.f24235a = dsvVar;
        this.f24236b = dsvVar2;
        this.f24237c = dsvVar3;
        this.f24238d = dsvVar4;
        this.e = dsvVar5;
        this.f = dsvVar6;
        this.g = dsvVar7;
        this.h = dsvVar8;
        this.i = dsvVar9;
    }

    public static bds a(dsv<zzf> dsvVar, dsv<cpo> dsvVar2, dsv<bcv> dsvVar3, dsv<bcr> dsvVar4, dsv<bdw> dsvVar5, dsv<bef> dsvVar6, dsv<Executor> dsvVar7, dsv<Executor> dsvVar8, dsv<bcm> dsvVar9) {
        return new bds(dsvVar, dsvVar2, dsvVar3, dsvVar4, dsvVar5, dsvVar6, dsvVar7, dsvVar8, dsvVar9);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new bdo(this.f24235a.a(), this.f24236b.a(), this.f24237c.a(), this.f24238d.a(), this.e.a(), this.f.a(), this.g.a(), this.h.a(), this.i.a());
    }
}
