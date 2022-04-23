package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aqa.class */
public final class aqa implements dsi<ayi<atu>> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<aue> f23744a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<Executor> f23745b;

    private aqa(dsv<aue> dsvVar, dsv<Executor> dsvVar2) {
        this.f23744a = dsvVar;
        this.f23745b = dsvVar2;
    }

    public static aqa a(dsv<aue> dsvVar, dsv<Executor> dsvVar2) {
        return new aqa(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return (ayi) dso.b(new ayi(this.f23744a.a(), this.f23745b.a()));
    }
}
