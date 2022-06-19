package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/awh.class */
public final class awh implements dht<Set<auq<auj>>> {

    /* renamed from: a */
    private final dig<axe> f10464a;

    private awh(dig<axe> digVar) {
        this.f10464a = digVar;
    }

    /* renamed from: a */
    public static awh m12384a(dig<axe> digVar) {
        return new awh(digVar);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return (Set) dhz.m9438a(Collections.singleton(auq.m12418a(this.f10464a.mo9430a(), C3650yg.f17647f)), "Cannot return null from a non-@Nullable @Provides method");
    }
}
