package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aml.class */
public final class aml implements dsi<ayi<eeg>> {

    /* renamed from: a  reason: collision with root package name */
    private final alx f23585a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<ano> f23586b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<Executor> f23587c;

    public aml(alx alxVar, dsv<ano> dsvVar, dsv<Executor> dsvVar2) {
        this.f23585a = alxVar;
        this.f23586b = dsvVar;
        this.f23587c = dsvVar2;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return (ayi) dso.b(new ayi(this.f23586b.a(), this.f23587c.a()));
    }
}
