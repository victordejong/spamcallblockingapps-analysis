package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Executor;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ajj.class */
public final class ajj implements dht<Set<auq<aql>>> {

    /* renamed from: a */
    private final dig<ajb> f9819a;

    /* renamed from: b */
    private final dig<Executor> f9820b;

    /* renamed from: c */
    private final dig<JSONObject> f9821c;

    private ajj(dig<ajb> digVar, dig<Executor> digVar2, dig<JSONObject> digVar3) {
        this.f9819a = digVar;
        this.f9820b = digVar2;
        this.f9821c = digVar3;
    }

    /* renamed from: a */
    public static ajj m13071a(dig<ajb> digVar, dig<Executor> digVar2, dig<JSONObject> digVar3) {
        return new ajj(digVar, digVar2, digVar3);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return (Set) dhz.m9438a(this.f9821c.mo9430a() == null ? Collections.emptySet() : Collections.singleton(new auq(this.f9819a.mo9430a(), this.f9820b.mo9430a())), "Cannot return null from a non-@Nullable @Provides method");
    }
}
