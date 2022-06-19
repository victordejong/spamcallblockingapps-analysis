package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ajw.class */
public final class ajw implements dht<Set<auq<dtr>>> {

    /* renamed from: a */
    private final ajr f9854a;

    /* renamed from: b */
    private final dig<amc> f9855b;

    public ajw(ajr ajrVar, dig<amc> digVar) {
        this.f9854a = ajrVar;
        this.f9855b = digVar;
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return (Set) dhz.m9438a(Collections.singleton(new auq(this.f9855b.mo9430a(), C3650yg.f17647f)), "Cannot return null from a non-@Nullable @Provides method");
    }
}
