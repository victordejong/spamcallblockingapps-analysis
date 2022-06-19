package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/anw.class */
public final class anw<AdT> implements dsi<ant<AdT>> {

    /* renamed from: a */
    private final dsv<Map<String, bsk<AdT>>> f42501a;

    private anw(dsv<Map<String, bsk<AdT>>> dsvVar) {
        this.f42501a = dsvVar;
    }

    /* renamed from: a */
    public static <AdT> anw<AdT> m18520a(dsv<Map<String, bsk<AdT>>> dsvVar) {
        return new anw<>(dsvVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new ant(this.f42501a.mo14005a());
    }
}
