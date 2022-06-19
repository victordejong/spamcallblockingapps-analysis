package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aok.class */
public final class aok implements dht<auq<aql>> {

    /* renamed from: a */
    private final aod f10114a;

    /* renamed from: b */
    private final dig<aos> f10115b;

    private aok(aod aodVar, dig<aos> digVar) {
        this.f10114a = aodVar;
        this.f10115b = digVar;
    }

    /* renamed from: a */
    public static aok m12862a(aod aodVar, dig<aos> digVar) {
        return new aok(aodVar, digVar);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return (auq) dhz.m9438a(new auq(this.f10115b.mo9430a(), C3650yg.f17647f), "Cannot return null from a non-@Nullable @Provides method");
    }
}
