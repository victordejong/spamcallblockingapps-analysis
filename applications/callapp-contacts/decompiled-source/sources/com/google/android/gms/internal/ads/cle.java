package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cle.class */
public final class cle implements dsi<clb> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<Context> f26016a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<Executor> f26017b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<zzvt> f26018c;

    /* renamed from: d  reason: collision with root package name */
    private final dsv<afq> f26019d;
    private final dsv<bza> e;
    private final dsv<bzz> f;
    private final dsv<cpq> g;

    public cle(dsv<Context> dsvVar, dsv<Executor> dsvVar2, dsv<zzvt> dsvVar3, dsv<afq> dsvVar4, dsv<bza> dsvVar5, dsv<bzz> dsvVar6, dsv<cpq> dsvVar7) {
        this.f26016a = dsvVar;
        this.f26017b = dsvVar2;
        this.f26018c = dsvVar3;
        this.f26019d = dsvVar4;
        this.e = dsvVar5;
        this.f = dsvVar6;
        this.g = dsvVar7;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new clb(this.f26016a.a(), this.f26017b.a(), this.f26018c.a(), this.f26019d.a(), this.e.a(), this.f.a(), this.g.a());
    }
}
