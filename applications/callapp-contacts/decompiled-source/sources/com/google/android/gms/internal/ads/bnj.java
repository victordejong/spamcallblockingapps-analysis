package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bnj.class */
public final class bnj implements dsi<ayi<auf>> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<bor> f24755a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<Executor> f24756b;

    private bnj(dsv<bor> dsvVar, dsv<Executor> dsvVar2) {
        this.f24755a = dsvVar;
        this.f24756b = dsvVar2;
    }

    public static bnj a(dsv<bor> dsvVar, dsv<Executor> dsvVar2) {
        return new bnj(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return (ayi) dso.b(new ayi(this.f24755a.a(), this.f24756b.a()));
    }
}
