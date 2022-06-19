package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aps.class */
public final class aps implements dsi<ayi<eir>> {

    /* renamed from: a */
    private final dsv<aue> f42593a;

    /* renamed from: b */
    private final dsv<Executor> f42594b;

    private aps(dsv<aue> dsvVar, dsv<Executor> dsvVar2) {
        this.f42593a = dsvVar;
        this.f42594b = dsvVar2;
    }

    /* renamed from: a */
    public static aps m18483a(dsv<aue> dsvVar, dsv<Executor> dsvVar2) {
        return new aps(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return (ayi) dso.m15764b(new ayi(this.f42593a.mo14005a(), this.f42594b.mo14005a()));
    }
}
