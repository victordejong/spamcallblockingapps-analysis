package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/byq.class */
public final class byq implements dht<byo> {

    /* renamed from: a */
    private final dig<crs> f12500a;

    /* renamed from: b */
    private final dig<Context> f12501b;

    /* renamed from: c */
    private final dig<Set<String>> f12502c;

    private byq(dig<crs> digVar, dig<Context> digVar2, dig<Set<String>> digVar3) {
        this.f12500a = digVar;
        this.f12501b = digVar2;
        this.f12502c = digVar3;
    }

    /* renamed from: a */
    public static byq m11552a(dig<crs> digVar, dig<Context> digVar2, dig<Set<String>> digVar3) {
        return new byq(digVar, digVar2, digVar3);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return new byo(this.f12500a.mo9430a(), this.f12501b.mo9430a(), this.f12502c.mo9430a());
    }
}
