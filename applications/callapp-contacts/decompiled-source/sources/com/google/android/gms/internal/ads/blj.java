package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/blj.class */
public final class blj implements dsi<bli> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<bln> f24637a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<Executor> f24638b;

    public blj(dsv<bln> dsvVar, dsv<Executor> dsvVar2) {
        this.f24637a = dsvVar;
        this.f24638b = dsvVar2;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new bli(this.f24637a.a(), this.f24638b.a());
    }
}
