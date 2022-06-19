package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzf;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/brj.class */
public final class brj implements dsi<bre> {

    /* renamed from: a */
    private final dsv<Context> f44555a;

    /* renamed from: b */
    private final dsv<aqs> f44556b;

    /* renamed from: c */
    private final dsv<brb> f44557c;

    /* renamed from: d */
    private final dsv<bqv> f44558d;

    /* renamed from: e */
    private final dsv<zzf> f44559e;

    private brj(dsv<Context> dsvVar, dsv<aqs> dsvVar2, dsv<brb> dsvVar3, dsv<bqv> dsvVar4, dsv<zzf> dsvVar5) {
        this.f44555a = dsvVar;
        this.f44556b = dsvVar2;
        this.f44557c = dsvVar3;
        this.f44558d = dsvVar4;
        this.f44559e = dsvVar5;
    }

    /* renamed from: a */
    public static brj m17636a(dsv<Context> dsvVar, dsv<aqs> dsvVar2, dsv<brb> dsvVar3, dsv<bqv> dsvVar4, dsv<zzf> dsvVar5) {
        return new brj(dsvVar, dsvVar2, dsvVar3, dsvVar4, dsvVar5);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new bre(this.f44555a.mo14005a(), this.f44556b.mo14005a(), this.f44557c.mo14005a(), this.f44558d.mo14005a(), this.f44559e.mo14005a());
    }
}
