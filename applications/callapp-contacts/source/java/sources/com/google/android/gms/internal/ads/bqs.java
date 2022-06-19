package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bqs.class */
public final class bqs implements dsi<bqt> {

    /* renamed from: a */
    private final dsv<Context> f44512a;

    private bqs(dsv<Context> dsvVar) {
        this.f44512a = dsvVar;
    }

    /* renamed from: a */
    public static bqs m17665a(dsv<Context> dsvVar) {
        return new bqs(dsvVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new bqt(this.f44512a.mo14005a());
    }
}
