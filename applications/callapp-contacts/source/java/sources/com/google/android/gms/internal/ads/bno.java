package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bno.class */
public final class bno implements dsi<String> {

    /* renamed from: a */
    private final dsv<Context> f44341a;

    private bno(dsv<Context> dsvVar) {
        this.f44341a = dsvVar;
    }

    /* renamed from: a */
    public static bno m17719a(dsv<Context> dsvVar) {
        return new bno(dsvVar);
    }

    /* renamed from: a */
    public static String m17720a(Context context) {
        return (String) dso.m15764b(context.getPackageName());
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return m17720a(this.f44341a.mo14005a());
    }
}
