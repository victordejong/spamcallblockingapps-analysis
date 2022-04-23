package com.google.android.gms.internal.ads;

import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bcw.class */
public final class bcw implements dsi<bcu> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<cov> f24190a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<JSONObject> f24191b;

    public bcw(dsv<cov> dsvVar, dsv<JSONObject> dsvVar2) {
        this.f24190a = dsvVar;
        this.f24191b = dsvVar2;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new bcu(this.f24190a.a(), this.f24191b.a());
    }
}
