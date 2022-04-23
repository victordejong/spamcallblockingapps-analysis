package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/apw.class */
public final class apw implements dsi<ayi<ash>> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<aue> f23731a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<Executor> f23732b;

    private apw(dsv<aue> dsvVar, dsv<Executor> dsvVar2) {
        this.f23731a = dsvVar;
        this.f23732b = dsvVar2;
    }

    public static apw a(dsv<aue> dsvVar, dsv<Executor> dsvVar2) {
        return new apw(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return (ayi) dso.b(new ayi(this.f23731a.a(), this.f23732b.a()));
    }
}
