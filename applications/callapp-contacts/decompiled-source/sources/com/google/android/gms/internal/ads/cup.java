package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.common.util.f;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cup.class */
public final class cup implements dsi<cuq> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<bvx> f26427a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<zzbar> f26428b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<String> f26429c;

    /* renamed from: d  reason: collision with root package name */
    private final dsv<String> f26430d;
    private final dsv<Context> e;
    private final dsv<cpj> f;
    private final dsv<f> g;
    private final dsv<die> h;

    private cup(dsv<bvx> dsvVar, dsv<zzbar> dsvVar2, dsv<String> dsvVar3, dsv<String> dsvVar4, dsv<Context> dsvVar5, dsv<cpj> dsvVar6, dsv<f> dsvVar7, dsv<die> dsvVar8) {
        this.f26427a = dsvVar;
        this.f26428b = dsvVar2;
        this.f26429c = dsvVar3;
        this.f26430d = dsvVar4;
        this.e = dsvVar5;
        this.f = dsvVar6;
        this.g = dsvVar7;
        this.h = dsvVar8;
    }

    public static cup a(dsv<bvx> dsvVar, dsv<zzbar> dsvVar2, dsv<String> dsvVar3, dsv<String> dsvVar4, dsv<Context> dsvVar5, dsv<cpj> dsvVar6, dsv<f> dsvVar7, dsv<die> dsvVar8) {
        return new cup(dsvVar, dsvVar2, dsvVar3, dsvVar4, dsvVar5, dsvVar6, dsvVar7, dsvVar8);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new cuq(this.f26427a.a(), this.f26428b.a(), this.f26429c.a(), this.f26430d.a(), this.e.a(), this.f.a(), this.g.a(), this.h.a());
    }
}
