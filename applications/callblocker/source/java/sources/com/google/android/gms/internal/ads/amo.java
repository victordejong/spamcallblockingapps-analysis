package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/amo.class */
public final class amo<AdT> implements dht<aml<AdT>> {

    /* renamed from: a */
    private final dig<Map<String, bmv<AdT>>> f10011a;

    private amo(dig<Map<String, bmv<AdT>>> digVar) {
        this.f10011a = digVar;
    }

    /* renamed from: a */
    public static <AdT> amo<AdT> m12929a(dig<Map<String, bmv<AdT>>> digVar) {
        return new amo<>(digVar);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return new aml(this.f10011a.mo9430a());
    }
}
