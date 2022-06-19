package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bou.class */
public final class bou implements dsi<bor> {

    /* renamed from: a */
    private final dsv<Context> f44403a;

    /* renamed from: b */
    private final dsv<C13019wo> f44404b;

    private bou(dsv<Context> dsvVar, dsv<C13019wo> dsvVar2) {
        this.f44403a = dsvVar;
        this.f44404b = dsvVar2;
    }

    /* renamed from: a */
    public static bou m17700a(dsv<Context> dsvVar, dsv<C13019wo> dsvVar2) {
        return new bou(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new bor(this.f44403a.mo14005a(), this.f44404b.mo14005a());
    }
}
