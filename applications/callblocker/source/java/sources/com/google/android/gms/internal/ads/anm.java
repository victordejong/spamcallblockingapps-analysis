package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/anm.class */
public final class anm implements dht<auq<dxs>> {

    /* renamed from: a */
    private final ann f10058a;

    /* renamed from: b */
    private final dig<ant> f10059b;

    private anm(ann annVar, dig<ant> digVar) {
        this.f10058a = annVar;
        this.f10059b = digVar;
    }

    /* renamed from: a */
    public static anm m12884a(ann annVar, dig<ant> digVar) {
        return new anm(annVar, digVar);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return (auq) dhz.m9438a(new auq(this.f10059b.mo9430a(), C3650yg.f17647f), "Cannot return null from a non-@Nullable @Provides method");
    }
}
