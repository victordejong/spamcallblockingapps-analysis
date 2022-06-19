package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/chx.class */
public final class chx implements dht<auq<apv>> {

    /* renamed from: a */
    private final chy f13078a;

    /* renamed from: b */
    private final dig<cia> f13079b;

    private chx(chy chyVar, dig<cia> digVar) {
        this.f13078a = chyVar;
        this.f13079b = digVar;
    }

    /* renamed from: a */
    public static chx m11264a(chy chyVar, dig<cia> digVar) {
        return new chx(chyVar, digVar);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return (auq) dhz.m9438a(new auq(this.f13079b.mo9430a(), C3650yg.f17647f), "Cannot return null from a non-@Nullable @Provides method");
    }
}
