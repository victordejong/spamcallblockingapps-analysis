package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/apl.class */
public final class apl implements dsi<ayi<ash>> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<ajk> f23711a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<Executor> f23712b;

    private apl(dsv<ajk> dsvVar, dsv<Executor> dsvVar2) {
        this.f23711a = dsvVar;
        this.f23712b = dsvVar2;
    }

    public static apl a(dsv<ajk> dsvVar, dsv<Executor> dsvVar2) {
        return new apl(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return (ayi) dso.b(new ayi(this.f23711a.a(), this.f23712b.a()));
    }
}
