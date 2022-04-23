package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bgl.class */
public final class bgl implements dsi<bfv> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<cpo> f24393a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<Executor> f24394b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<bif> f24395c;

    public bgl(dsv<cpo> dsvVar, dsv<Executor> dsvVar2, dsv<bif> dsvVar3) {
        this.f24393a = dsvVar;
        this.f24394b = dsvVar2;
        this.f24395c = dsvVar3;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new bfv(this.f24393a.a(), this.f24394b.a(), this.f24395c.a());
    }
}
