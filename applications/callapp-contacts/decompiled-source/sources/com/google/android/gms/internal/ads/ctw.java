package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ctw.class */
public final class ctw implements dsi<ctu> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<Executor> f26386a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<zc> f26387b;

    public ctw(dsv<Executor> dsvVar, dsv<zc> dsvVar2) {
        this.f26386a = dsvVar;
        this.f26387b = dsvVar2;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new ctu(this.f26386a.a(), this.f26387b.a());
    }
}
