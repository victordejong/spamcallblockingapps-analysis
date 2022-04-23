package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bfw.class */
public final class bfw implements dsi<bfs> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<Executor> f24360a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<bfi> f24361b;

    public bfw(dsv<Executor> dsvVar, dsv<bfi> dsvVar2) {
        this.f24360a = dsvVar;
        this.f24361b = dsvVar2;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new bfs(this.f24360a.a(), this.f24361b.a());
    }
}
