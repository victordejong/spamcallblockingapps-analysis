package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bgl.class */
public final class bgl implements dsi<bfv> {

    /* renamed from: a */
    private final dsv<cpo> f43874a;

    /* renamed from: b */
    private final dsv<Executor> f43875b;

    /* renamed from: c */
    private final dsv<bif> f43876c;

    public bgl(dsv<cpo> dsvVar, dsv<Executor> dsvVar2, dsv<bif> dsvVar3) {
        this.f43874a = dsvVar;
        this.f43875b = dsvVar2;
        this.f43876c = dsvVar3;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new bfv(this.f43874a.mo14005a(), this.f43875b.mo14005a(), this.f43876c.mo14005a());
    }
}
