package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/apg.class */
public final class apg implements dsi<ayi<eir>> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<ajk> f23701a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<Executor> f23702b;

    private apg(dsv<ajk> dsvVar, dsv<Executor> dsvVar2) {
        this.f23701a = dsvVar;
        this.f23702b = dsvVar2;
    }

    public static apg a(dsv<ajk> dsvVar, dsv<Executor> dsvVar2) {
        return new apg(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return (ayi) dso.b(new ayi(this.f23701a.a(), this.f23702b.a()));
    }
}
