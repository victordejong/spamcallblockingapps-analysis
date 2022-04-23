package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.ApplicationInfo;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bni.class */
public final class bni implements dsi<ApplicationInfo> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<Context> f24754a;

    private bni(dsv<Context> dsvVar) {
        this.f24754a = dsvVar;
    }

    public static ApplicationInfo a(Context context) {
        return (ApplicationInfo) dso.b(context.getApplicationInfo());
    }

    public static bni a(dsv<Context> dsvVar) {
        return new bni(dsvVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return a(this.f24754a.a());
    }
}
