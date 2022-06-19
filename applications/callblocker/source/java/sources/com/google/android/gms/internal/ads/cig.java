package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cig.class */
public final class cig implements dht<AbstractC3558uw> {

    /* renamed from: a */
    private final cih f13096a;

    /* renamed from: b */
    private final dig<cif> f13097b;

    private cig(cih cihVar, dig<cif> digVar) {
        this.f13096a = cihVar;
        this.f13097b = digVar;
    }

    /* renamed from: a */
    public static cig m11253a(cih cihVar, dig<cif> digVar) {
        return new cig(cihVar, digVar);
    }

    /* renamed from: a */
    public static AbstractC3558uw m11254a(cih cihVar, cif cifVar) {
        return (AbstractC3558uw) dhz.m9438a(cifVar.f13094b, "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return m11254a(this.f13096a, this.f13097b.mo9430a());
    }
}
