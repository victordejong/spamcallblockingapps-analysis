package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/apl.class */
public final class apl implements dsi<ayi<ash>> {

    /* renamed from: a */
    private final dsv<ajk> f42579a;

    /* renamed from: b */
    private final dsv<Executor> f42580b;

    private apl(dsv<ajk> dsvVar, dsv<Executor> dsvVar2) {
        this.f42579a = dsvVar;
        this.f42580b = dsvVar2;
    }

    /* renamed from: a */
    public static apl m18487a(dsv<ajk> dsvVar, dsv<Executor> dsvVar2) {
        return new apl(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return (ayi) dso.m15764b(new ayi(this.f42579a.mo14005a(), this.f42580b.mo14005a()));
    }
}
