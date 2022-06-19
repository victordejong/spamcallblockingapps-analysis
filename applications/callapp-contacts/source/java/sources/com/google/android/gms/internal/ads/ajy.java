package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ajy.class */
public final class ajy implements dsi<ajp> {

    /* renamed from: a */
    private final dsv<eed> f42269a;

    /* renamed from: b */
    private final dsv<C12729lw> f42270b;

    /* renamed from: c */
    private final dsv<Executor> f42271c;

    private ajy(dsv<eed> dsvVar, dsv<C12729lw> dsvVar2, dsv<Executor> dsvVar3) {
        this.f42269a = dsvVar;
        this.f42270b = dsvVar2;
        this.f42271c = dsvVar3;
    }

    /* renamed from: a */
    public static ajy m18625a(dsv<eed> dsvVar, dsv<C12729lw> dsvVar2, dsv<Executor> dsvVar3) {
        return new ajy(dsvVar, dsvVar2, dsvVar3);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return (ajp) dso.m15764b(new ajp(this.f42269a.mo14005a().f48857c, this.f42270b.mo14005a(), this.f42271c.mo14005a()));
    }
}
