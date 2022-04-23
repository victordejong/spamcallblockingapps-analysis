package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/anw.class */
public final class anw<AdT> implements dsi<ant<AdT>> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<Map<String, bsk<AdT>>> f23642a;

    private anw(dsv<Map<String, bsk<AdT>>> dsvVar) {
        this.f23642a = dsvVar;
    }

    public static <AdT> anw<AdT> a(dsv<Map<String, bsk<AdT>>> dsvVar) {
        return new anw<>(dsvVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new ant(this.f23642a.a());
    }
}
