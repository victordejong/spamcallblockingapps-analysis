package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bno.class */
public final class bno implements dsi<String> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<Context> f24759a;

    private bno(dsv<Context> dsvVar) {
        this.f24759a = dsvVar;
    }

    public static bno a(dsv<Context> dsvVar) {
        return new bno(dsvVar);
    }

    public static String a(Context context) {
        return (String) dso.b(context.getPackageName());
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return a(this.f24759a.a());
    }
}
