package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ajt.class */
public final class ajt implements dht<Set<auq<arg>>> {

    /* renamed from: a */
    private final ajr f9849a;

    /* renamed from: b */
    private final dig<amc> f9850b;

    public ajt(ajr ajrVar, dig<amc> digVar) {
        this.f9849a = ajrVar;
        this.f9850b = digVar;
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return (Set) dhz.m9438a(Collections.singleton(new auq(this.f9850b.mo9430a(), C3650yg.f17647f)), "Cannot return null from a non-@Nullable @Provides method");
    }
}
