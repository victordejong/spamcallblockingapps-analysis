package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bqs.class */
public final class bqs implements dsi<bqt> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<Context> f24909a;

    private bqs(dsv<Context> dsvVar) {
        this.f24909a = dsvVar;
    }

    public static bqs a(dsv<Context> dsvVar) {
        return new bqs(dsvVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new bqt(this.f24909a.a());
    }
}
