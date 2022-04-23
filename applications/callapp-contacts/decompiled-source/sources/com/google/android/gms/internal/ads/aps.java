package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aps.class */
public final class aps implements dsi<ayi<eir>> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<aue> f23722a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<Executor> f23723b;

    private aps(dsv<aue> dsvVar, dsv<Executor> dsvVar2) {
        this.f23722a = dsvVar;
        this.f23723b = dsvVar2;
    }

    public static aps a(dsv<aue> dsvVar, dsv<Executor> dsvVar2) {
        return new aps(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return (ayi) dso.b(new ayi(this.f23722a.a(), this.f23723b.a()));
    }
}
