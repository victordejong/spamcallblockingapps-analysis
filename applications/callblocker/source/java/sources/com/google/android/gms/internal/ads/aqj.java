package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aqj.class */
public final class aqj implements dht<aqh> {

    /* renamed from: a */
    private final dig<Set<auq<aqi>>> f10218a;

    private aqj(dig<Set<auq<aqi>>> digVar) {
        this.f10218a = digVar;
    }

    /* renamed from: a */
    public static aqj m12810a(dig<Set<auq<aqi>>> digVar) {
        return new aqj(digVar);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return new aqh(this.f10218a.mo9430a());
    }
}
