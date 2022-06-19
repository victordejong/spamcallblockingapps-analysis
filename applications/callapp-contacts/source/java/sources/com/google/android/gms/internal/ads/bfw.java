package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bfw.class */
public final class bfw implements dsi<bfs> {

    /* renamed from: a */
    private final dsv<Executor> f43840a;

    /* renamed from: b */
    private final dsv<bfi> f43841b;

    public bfw(dsv<Executor> dsvVar, dsv<bfi> dsvVar2) {
        this.f43840a = dsvVar;
        this.f43841b = dsvVar2;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new bfs(this.f43840a.mo14005a(), this.f43841b.mo14005a());
    }
}
