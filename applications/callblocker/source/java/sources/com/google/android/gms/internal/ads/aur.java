package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aur.class */
public final class aur implements dht<aup> {

    /* renamed from: a */
    private final dig<Context> f10396a;

    /* renamed from: b */
    private final dig<Set<auq<dtr>>> f10397b;

    /* renamed from: c */
    private final dig<cgr> f10398c;

    private aur(dig<Context> digVar, dig<Set<auq<dtr>>> digVar2, dig<cgr> digVar3) {
        this.f10396a = digVar;
        this.f10397b = digVar2;
        this.f10398c = digVar3;
    }

    /* renamed from: a */
    public static aur m12417a(dig<Context> digVar, dig<Set<auq<dtr>>> digVar2, dig<cgr> digVar3) {
        return new aur(digVar, digVar2, digVar3);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return new aup(this.f10396a.mo9430a(), this.f10397b.mo9430a(), this.f10398c.mo9430a());
    }
}
