package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/arx.class */
public final class arx implements dht<arv> {

    /* renamed from: a */
    private final dig<Set<auq<arw>>> f10250a;

    /* renamed from: b */
    private final dig<cgr> f10251b;

    private arx(dig<Set<auq<arw>>> digVar, dig<cgr> digVar2) {
        this.f10250a = digVar;
        this.f10251b = digVar2;
    }

    /* renamed from: a */
    public static arx m12789a(dig<Set<auq<arw>>> digVar, dig<cgr> digVar2) {
        return new arx(digVar, digVar2);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return new arv(this.f10250a.mo9430a(), this.f10251b.mo9430a());
    }
}
