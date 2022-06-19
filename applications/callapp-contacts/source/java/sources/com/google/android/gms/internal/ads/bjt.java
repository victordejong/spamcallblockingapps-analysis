package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bjt.class */
public final class bjt implements dsi<ayi<auf>> {

    /* renamed from: a */
    private final dsv<bjz> f44120a;

    /* renamed from: b */
    private final dsv<Executor> f44121b;

    private bjt(dsv<bjz> dsvVar, dsv<Executor> dsvVar2) {
        this.f44120a = dsvVar;
        this.f44121b = dsvVar2;
    }

    /* renamed from: a */
    public static bjt m17800a(dsv<bjz> dsvVar, dsv<Executor> dsvVar2) {
        return new bjt(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return (ayi) dso.m15764b(new ayi(this.f44120a.mo14005a(), this.f44121b.mo14005a()));
    }
}
