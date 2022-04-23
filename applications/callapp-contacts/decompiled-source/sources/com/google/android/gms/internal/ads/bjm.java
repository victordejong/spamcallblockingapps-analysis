package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bjm.class */
public final class bjm implements dsi<bji> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<Executor> f24551a;

    public bjm(dsv<Executor> dsvVar) {
        this.f24551a = dsvVar;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new bji(this.f24551a.a());
    }
}
