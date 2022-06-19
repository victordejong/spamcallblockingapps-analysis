package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aqc.class */
public final class aqc implements dht<aqb> {

    /* renamed from: a */
    private final dig<Set<auq<aqe>>> f10211a;

    private aqc(dig<Set<auq<aqe>>> digVar) {
        this.f10211a = digVar;
    }

    /* renamed from: a */
    public static aqc m12813a(dig<Set<auq<aqe>>> digVar) {
        return new aqc(digVar);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return new aqb(this.f10211a.mo9430a());
    }
}
