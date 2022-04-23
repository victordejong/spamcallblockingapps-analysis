package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzb;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bit.class */
public final class bit implements dsi<bif> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<aeb> f24520a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<Context> f24521b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<die> f24522c;

    /* renamed from: d  reason: collision with root package name */
    private final dsv<bw> f24523d;
    private final dsv<zzbar> e;
    private final dsv<zzb> f;
    private final dsv<ehk> g;
    private final dsv<atx> h;

    private bit(dsv<aeb> dsvVar, dsv<Context> dsvVar2, dsv<die> dsvVar3, dsv<bw> dsvVar4, dsv<zzbar> dsvVar5, dsv<zzb> dsvVar6, dsv<ehk> dsvVar7, dsv<atx> dsvVar8) {
        this.f24520a = dsvVar;
        this.f24521b = dsvVar2;
        this.f24522c = dsvVar3;
        this.f24523d = dsvVar4;
        this.e = dsvVar5;
        this.f = dsvVar6;
        this.g = dsvVar7;
        this.h = dsvVar8;
    }

    public static bit a(dsv<aeb> dsvVar, dsv<Context> dsvVar2, dsv<die> dsvVar3, dsv<bw> dsvVar4, dsv<zzbar> dsvVar5, dsv<zzb> dsvVar6, dsv<ehk> dsvVar7, dsv<atx> dsvVar8) {
        return new bit(dsvVar, dsvVar2, dsvVar3, dsvVar4, dsvVar5, dsvVar6, dsvVar7, dsvVar8);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new bif(this.f24520a.a(), this.f24521b.a(), this.f24522c.a(), this.f24523d.a(), this.e.a(), this.f.a(), this.g.a(), this.h.a());
    }
}
