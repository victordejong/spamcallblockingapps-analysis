package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/anb.class */
public final class anb implements dht<cgr> {

    /* renamed from: a */
    private final amy f10034a;

    private anb(amy amyVar) {
        this.f10034a = amyVar;
    }

    /* renamed from: a */
    public static anb m12904a(amy amyVar) {
        return new anb(amyVar);
    }

    /* renamed from: b */
    public static cgr m12903b(amy amyVar) {
        return (cgr) dhz.m9438a(amyVar.m12908b(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return m12903b(this.f10034a);
    }
}
