package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.AbstractC2328o;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Executor;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ajl.class */
public final class ajl implements dht<Set<auq<AbstractC2328o>>> {

    /* renamed from: a */
    private final dig<ajb> f9829a;

    /* renamed from: b */
    private final dig<Executor> f9830b;

    /* renamed from: c */
    private final dig<JSONObject> f9831c;

    private ajl(dig<ajb> digVar, dig<Executor> digVar2, dig<JSONObject> digVar3) {
        this.f9829a = digVar;
        this.f9830b = digVar2;
        this.f9831c = digVar3;
    }

    /* renamed from: a */
    public static ajl m13064a(dig<ajb> digVar, dig<Executor> digVar2, dig<JSONObject> digVar3) {
        return new ajl(digVar, digVar2, digVar3);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return (Set) dhz.m9438a(this.f9831c.mo9430a() == null ? Collections.emptySet() : Collections.singleton(new auq(this.f9829a.mo9430a(), this.f9830b.mo9430a())), "Cannot return null from a non-@Nullable @Provides method");
    }
}
