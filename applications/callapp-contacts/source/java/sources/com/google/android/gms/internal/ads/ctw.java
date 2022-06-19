package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ctw.class */
public final class ctw implements dsi<ctu> {

    /* renamed from: a */
    private final dsv<Executor> f46532a;

    /* renamed from: b */
    private final dsv<C13090zc> f46533b;

    public ctw(dsv<Executor> dsvVar, dsv<C13090zc> dsvVar2) {
        this.f46532a = dsvVar;
        this.f46533b = dsvVar2;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new ctu(this.f46532a.mo14005a(), this.f46533b.mo14005a());
    }
}
