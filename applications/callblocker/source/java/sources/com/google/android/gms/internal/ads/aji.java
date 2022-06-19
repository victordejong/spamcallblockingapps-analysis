package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Executor;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aji.class */
public final class aji implements dht<Set<auq<dtr>>> {

    /* renamed from: a */
    private final dig<ajb> f9816a;

    /* renamed from: b */
    private final dig<Executor> f9817b;

    /* renamed from: c */
    private final dig<JSONObject> f9818c;

    private aji(dig<ajb> digVar, dig<Executor> digVar2, dig<JSONObject> digVar3) {
        this.f9816a = digVar;
        this.f9817b = digVar2;
        this.f9818c = digVar3;
    }

    /* renamed from: a */
    public static aji m13072a(dig<ajb> digVar, dig<Executor> digVar2, dig<JSONObject> digVar3) {
        return new aji(digVar, digVar2, digVar3);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return (Set) dhz.m9438a(this.f9818c.mo9430a() == null ? Collections.emptySet() : Collections.singleton(new auq(this.f9816a.mo9430a(), this.f9817b.mo9430a())), "Cannot return null from a non-@Nullable @Provides method");
    }
}
