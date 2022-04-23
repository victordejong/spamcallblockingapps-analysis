package com.google.android.gms.internal.ads;

import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aki.class */
public final class aki implements dsi<JSONObject> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<cov> f23489a;

    private aki(dsv<cov> dsvVar) {
        this.f23489a = dsvVar;
    }

    public static aki a(dsv<cov> dsvVar) {
        return new aki(dsvVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return akj.a(this.f23489a.a());
    }
}
