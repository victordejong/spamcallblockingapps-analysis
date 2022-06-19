package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/asi.class */
public final class asi implements dht<asg> {

    /* renamed from: a */
    private final dig<Set<auq<asl>>> f10266a;

    private asi(dig<Set<auq<asl>>> digVar) {
        this.f10266a = digVar;
    }

    /* renamed from: a */
    public static asi m12781a(dig<Set<auq<asl>>> digVar) {
        return new asi(digVar);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return new asg(this.f10266a.mo9430a());
    }
}
