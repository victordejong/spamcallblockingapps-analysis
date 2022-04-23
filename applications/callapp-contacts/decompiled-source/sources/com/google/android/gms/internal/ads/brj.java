package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzf;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/brj.class */
public final class brj implements dsi<bre> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<Context> f24943a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<aqs> f24944b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<brb> f24945c;

    /* renamed from: d  reason: collision with root package name */
    private final dsv<bqv> f24946d;
    private final dsv<zzf> e;

    private brj(dsv<Context> dsvVar, dsv<aqs> dsvVar2, dsv<brb> dsvVar3, dsv<bqv> dsvVar4, dsv<zzf> dsvVar5) {
        this.f24943a = dsvVar;
        this.f24944b = dsvVar2;
        this.f24945c = dsvVar3;
        this.f24946d = dsvVar4;
        this.e = dsvVar5;
    }

    public static brj a(dsv<Context> dsvVar, dsv<aqs> dsvVar2, dsv<brb> dsvVar3, dsv<bqv> dsvVar4, dsv<zzf> dsvVar5) {
        return new brj(dsvVar, dsvVar2, dsvVar3, dsvVar4, dsvVar5);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new bre(this.f24943a.a(), this.f24944b.a(), this.f24945c.a(), this.f24946d.a(), this.e.a());
    }
}
