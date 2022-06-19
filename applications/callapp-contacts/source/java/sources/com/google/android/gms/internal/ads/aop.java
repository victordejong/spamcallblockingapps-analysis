package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aop.class */
public final class aop implements dsi<ayi<ash>> {

    /* renamed from: a */
    private final dsv<att> f42532a;

    /* renamed from: b */
    private final dsv<Executor> f42533b;

    private aop(dsv<att> dsvVar, dsv<Executor> dsvVar2) {
        this.f42532a = dsvVar;
        this.f42533b = dsvVar2;
    }

    /* renamed from: a */
    public static aop m18509a(dsv<att> dsvVar, dsv<Executor> dsvVar2) {
        return new aop(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return (ayi) dso.m15764b(new ayi(this.f42532a.mo14005a(), this.f42533b.mo14005a()));
    }
}
