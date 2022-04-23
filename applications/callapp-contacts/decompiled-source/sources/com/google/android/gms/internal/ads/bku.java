package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bku.class */
public final class bku implements dsi<bkv> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<Context> f24603a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<cpz> f24604b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<bli> f24605c;

    /* renamed from: d  reason: collision with root package name */
    private final dsv<cpk> f24606d;
    private final dsv<cov> e;
    private final dsv<brs> f;

    private bku(dsv<Context> dsvVar, dsv<cpz> dsvVar2, dsv<bli> dsvVar3, dsv<cpk> dsvVar4, dsv<cov> dsvVar5, dsv<brs> dsvVar6) {
        this.f24603a = dsvVar;
        this.f24604b = dsvVar2;
        this.f24605c = dsvVar3;
        this.f24606d = dsvVar4;
        this.e = dsvVar5;
        this.f = dsvVar6;
    }

    public static bku a(dsv<Context> dsvVar, dsv<cpz> dsvVar2, dsv<bli> dsvVar3, dsv<cpk> dsvVar4, dsv<cov> dsvVar5, dsv<brs> dsvVar6) {
        return new bku(dsvVar, dsvVar2, dsvVar3, dsvVar4, dsvVar5, dsvVar6);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new bkv(this.f24603a.a(), this.f24604b.a(), this.f24605c.a(), this.f24606d.a(), this.e.a(), this.f.a());
    }
}
