package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/blj.class */
public final class blj implements dsi<bli> {

    /* renamed from: a */
    private final dsv<bln> f44195a;

    /* renamed from: b */
    private final dsv<Executor> f44196b;

    public blj(dsv<bln> dsvVar, dsv<Executor> dsvVar2) {
        this.f44195a = dsvVar;
        this.f44196b = dsvVar2;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new bli(this.f44195a.mo14005a(), this.f44196b.mo14005a());
    }
}
