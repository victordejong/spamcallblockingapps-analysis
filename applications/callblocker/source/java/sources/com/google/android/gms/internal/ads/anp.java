package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/anp.class */
public final class anp implements dht<auq<AbstractC2792app>> {

    /* renamed from: a */
    private final ann f10062a;

    /* renamed from: b */
    private final dig<ant> f10063b;

    private anp(ann annVar, dig<ant> digVar) {
        this.f10062a = annVar;
        this.f10063b = digVar;
    }

    /* renamed from: a */
    public static anp m12882a(ann annVar, dig<ant> digVar) {
        return new anp(annVar, digVar);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return (auq) dhz.m9438a(new auq(this.f10063b.mo9430a(), C3650yg.f17647f), "Cannot return null from a non-@Nullable @Provides method");
    }
}
