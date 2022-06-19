package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ana.class */
public final class ana implements dht<String> {

    /* renamed from: a */
    private final amy f10033a;

    private ana(amy amyVar) {
        this.f10033a = amyVar;
    }

    /* renamed from: a */
    public static ana m12906a(amy amyVar) {
        return new ana(amyVar);
    }

    /* renamed from: b */
    public static String m12905b(amy amyVar) {
        return (String) dhz.m9438a(amyVar.m12907c(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return m12905b(this.f10033a);
    }
}
