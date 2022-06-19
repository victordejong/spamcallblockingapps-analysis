package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/apq.class */
public final class apq implements dht<apo> {

    /* renamed from: a */
    private final dig<Set<auq<dxs>>> f10195a;

    private apq(dig<Set<auq<dxs>>> digVar) {
        this.f10195a = digVar;
    }

    /* renamed from: a */
    public static apq m12816a(dig<Set<auq<dxs>>> digVar) {
        return new apq(digVar);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return new apo(this.f10195a.mo9430a());
    }
}
