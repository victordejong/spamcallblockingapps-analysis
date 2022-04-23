package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.f;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/apc.class */
public final class apc implements dsi<yc> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<f> f23694a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<yo> f23695b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<cpo> f23696c;

    private apc(dsv<f> dsvVar, dsv<yo> dsvVar2, dsv<cpo> dsvVar3) {
        this.f23694a = dsvVar;
        this.f23695b = dsvVar2;
        this.f23696c = dsvVar3;
    }

    public static apc a(dsv<f> dsvVar, dsv<yo> dsvVar2, dsv<cpo> dsvVar3) {
        return new apc(dsvVar, dsvVar2, dsvVar3);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        f a2 = this.f23694a.a();
        yo a3 = this.f23695b.a();
        return (yc) dso.b(new yc(a2, a3, a3.f28552b.a(), this.f23696c.a().f));
    }
}
