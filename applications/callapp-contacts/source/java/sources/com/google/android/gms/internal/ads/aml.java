package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aml.class */
public final class aml implements dsi<ayi<eeg>> {

    /* renamed from: a */
    private final alx f42432a;

    /* renamed from: b */
    private final dsv<ano> f42433b;

    /* renamed from: c */
    private final dsv<Executor> f42434c;

    public aml(alx alxVar, dsv<ano> dsvVar, dsv<Executor> dsvVar2) {
        this.f42432a = alxVar;
        this.f42433b = dsvVar;
        this.f42434c = dsvVar2;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return (ayi) dso.m15764b(new ayi(this.f42433b.mo14005a(), this.f42434c.mo14005a()));
    }
}
