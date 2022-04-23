package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aph.class */
public final class aph implements dsi<ayi<ayn>> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<ayq> f23703a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<Executor> f23704b;

    private aph(dsv<ayq> dsvVar, dsv<Executor> dsvVar2) {
        this.f23703a = dsvVar;
        this.f23704b = dsvVar2;
    }

    public static aph a(dsv<ayq> dsvVar, dsv<Executor> dsvVar2) {
        return new aph(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return (ayi) dso.b(new ayi(this.f23703a.a(), this.f23704b.a()));
    }
}
