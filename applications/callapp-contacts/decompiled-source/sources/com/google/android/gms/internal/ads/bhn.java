package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzb;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bhn.class */
public final class bhn implements dsi<bhm> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<Context> f24464a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<Executor> f24465b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<die> f24466c;

    /* renamed from: d  reason: collision with root package name */
    private final dsv<zzbar> f24467d;
    private final dsv<zzb> e;
    private final dsv<aeb> f;
    private final dsv<brs> g;
    private final dsv<cus> h;
    private final dsv<bli> i;
    private final dsv<cty> j;

    public bhn(dsv<Context> dsvVar, dsv<Executor> dsvVar2, dsv<die> dsvVar3, dsv<zzbar> dsvVar4, dsv<zzb> dsvVar5, dsv<aeb> dsvVar6, dsv<brs> dsvVar7, dsv<cus> dsvVar8, dsv<bli> dsvVar9, dsv<cty> dsvVar10) {
        this.f24464a = dsvVar;
        this.f24465b = dsvVar2;
        this.f24466c = dsvVar3;
        this.f24467d = dsvVar4;
        this.e = dsvVar5;
        this.f = dsvVar6;
        this.g = dsvVar7;
        this.h = dsvVar8;
        this.i = dsvVar9;
        this.j = dsvVar10;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new bhm(this.f24464a.a(), this.f24465b.a(), this.f24466c.a(), this.f24467d.a(), this.e.a(), this.f.a(), this.g.a(), this.h.a(), this.i.a(), this.j.a());
    }
}
