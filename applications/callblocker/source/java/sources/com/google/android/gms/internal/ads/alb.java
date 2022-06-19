package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/alb.class */
public final class alb implements dht<auq<arg>> {

    /* renamed from: a */
    private final ako f9934a;

    /* renamed from: b */
    private final dig<ama> f9935b;

    public alb(ako akoVar, dig<ama> digVar) {
        this.f9934a = akoVar;
        this.f9935b = digVar;
    }

    /* renamed from: a */
    public static auq<arg> m12980a(ako akoVar, ama amaVar) {
        return (auq) dhz.m9438a(new auq(amaVar, C3650yg.f17646e), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return m12980a(this.f9934a, this.f9935b.mo9430a());
    }
}
