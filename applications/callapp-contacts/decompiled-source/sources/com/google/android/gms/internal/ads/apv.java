package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/apv.class */
public final class apv implements dsi<ayi<atk>> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<aue> f23729a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<Executor> f23730b;

    private apv(dsv<aue> dsvVar, dsv<Executor> dsvVar2) {
        this.f23729a = dsvVar;
        this.f23730b = dsvVar2;
    }

    public static apv a(dsv<aue> dsvVar, dsv<Executor> dsvVar2) {
        return new apv(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return (ayi) dso.b(new ayi(this.f23729a.a(), this.f23730b.a()));
    }
}
