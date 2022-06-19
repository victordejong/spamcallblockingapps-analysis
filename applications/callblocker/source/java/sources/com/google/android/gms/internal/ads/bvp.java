package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bvp.class */
public final class bvp implements dht<bvn> {

    /* renamed from: a */
    private final dig<Set<String>> f12353a;

    private bvp(dig<Set<String>> digVar) {
        this.f12353a = digVar;
    }

    /* renamed from: a */
    public static bvn m11590a(Set<String> set) {
        return new bvn(set);
    }

    /* renamed from: a */
    public static bvp m11591a(dig<Set<String>> digVar) {
        return new bvp(digVar);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return m11590a(this.f12353a.mo9430a());
    }
}
