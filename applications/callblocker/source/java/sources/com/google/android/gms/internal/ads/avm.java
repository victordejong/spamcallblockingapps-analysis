package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.C2387p;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/avm.class */
public final class avm implements dht<avg> {

    /* renamed from: a */
    private final dig<Set<auq<C2387p.C2388a>>> f10419a;

    private avm(dig<Set<auq<C2387p.C2388a>>> digVar) {
        this.f10419a = digVar;
    }

    /* renamed from: a */
    public static avm m12408a(dig<Set<auq<C2387p.C2388a>>> digVar) {
        return new avm(digVar);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return new avg(this.f10419a.mo9430a());
    }
}
