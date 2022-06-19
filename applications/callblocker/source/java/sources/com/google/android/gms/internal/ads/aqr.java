package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aqr.class */
public final class aqr implements dht<aqk> {

    /* renamed from: a */
    private final dig<Set<auq<aql>>> f10223a;

    private aqr(dig<Set<auq<aql>>> digVar) {
        this.f10223a = digVar;
    }

    /* renamed from: a */
    public static aqr m12799a(dig<Set<auq<aql>>> digVar) {
        return new aqr(digVar);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return new aqk(this.f10223a.mo9430a());
    }
}
