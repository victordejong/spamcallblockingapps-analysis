package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/avz.class */
public final class avz implements dht<Set<auq<AbstractC2792app>>> {

    /* renamed from: a */
    private final avv f10441a;

    /* renamed from: b */
    private final dig<axc> f10442b;

    private avz(avv avvVar, dig<axc> digVar) {
        this.f10441a = avvVar;
        this.f10442b = digVar;
    }

    /* renamed from: a */
    public static avz m12391a(avv avvVar, dig<axc> digVar) {
        return new avz(avvVar, digVar);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return (Set) dhz.m9438a(this.f10441a.mo11681a(this.f10442b.mo9430a()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
