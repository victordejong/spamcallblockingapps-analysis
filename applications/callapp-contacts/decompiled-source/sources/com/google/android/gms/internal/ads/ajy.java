package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ajy.class */
public final class ajy implements dsi<ajp> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<eed> f23457a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<lw> f23458b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<Executor> f23459c;

    private ajy(dsv<eed> dsvVar, dsv<lw> dsvVar2, dsv<Executor> dsvVar3) {
        this.f23457a = dsvVar;
        this.f23458b = dsvVar2;
        this.f23459c = dsvVar3;
    }

    public static ajy a(dsv<eed> dsvVar, dsv<lw> dsvVar2, dsv<Executor> dsvVar3) {
        return new ajy(dsvVar, dsvVar2, dsvVar3);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return (ajp) dso.b(new ajp(this.f23457a.a().f27722c, this.f23458b.a(), this.f23459c.a()));
    }
}
