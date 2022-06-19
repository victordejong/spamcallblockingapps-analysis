package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/apw.class */
public final class apw implements dsi<ayi<ash>> {

    /* renamed from: a */
    private final dsv<aue> f42602a;

    /* renamed from: b */
    private final dsv<Executor> f42603b;

    private apw(dsv<aue> dsvVar, dsv<Executor> dsvVar2) {
        this.f42602a = dsvVar;
        this.f42603b = dsvVar2;
    }

    /* renamed from: a */
    public static apw m18479a(dsv<aue> dsvVar, dsv<Executor> dsvVar2) {
        return new apw(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return (ayi) dso.m15764b(new ayi(this.f42602a.mo14005a(), this.f42603b.mo14005a()));
    }
}
