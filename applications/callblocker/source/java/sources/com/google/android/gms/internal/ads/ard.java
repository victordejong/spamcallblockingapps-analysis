package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ard.class */
public final class ard implements dht<arb> {

    /* renamed from: a */
    private final dig<Set<auq<arg>>> f10235a;

    private ard(dig<Set<auq<arg>>> digVar) {
        this.f10235a = digVar;
    }

    /* renamed from: a */
    public static ard m12797a(dig<Set<auq<arg>>> digVar) {
        return new ard(digVar);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return new arb(this.f10235a.mo9430a());
    }
}
