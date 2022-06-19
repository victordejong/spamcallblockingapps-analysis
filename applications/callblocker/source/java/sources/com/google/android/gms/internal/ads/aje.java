package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Executor;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aje.class */
public final class aje implements dht<Set<auq<aqi>>> {

    /* renamed from: a */
    private final dig<ajb> f9805a;

    /* renamed from: b */
    private final dig<Executor> f9806b;

    /* renamed from: c */
    private final dig<JSONObject> f9807c;

    private aje(dig<ajb> digVar, dig<Executor> digVar2, dig<JSONObject> digVar3) {
        this.f9805a = digVar;
        this.f9806b = digVar2;
        this.f9807c = digVar3;
    }

    /* renamed from: a */
    public static aje m13076a(dig<ajb> digVar, dig<Executor> digVar2, dig<JSONObject> digVar3) {
        return new aje(digVar, digVar2, digVar3);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return (Set) dhz.m9438a(this.f9807c.mo9430a() == null ? Collections.emptySet() : Collections.singleton(new auq(this.f9805a.mo9430a(), this.f9806b.mo9430a())), "Cannot return null from a non-@Nullable @Provides method");
    }
}
