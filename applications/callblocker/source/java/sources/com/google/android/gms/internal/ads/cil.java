package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cil.class */
public final class cil implements dht<C3553ur> {

    /* renamed from: a */
    private final cih f13111a;

    /* renamed from: b */
    private final dig<cif> f13112b;

    private cil(cih cihVar, dig<cif> digVar) {
        this.f13111a = cihVar;
        this.f13112b = digVar;
    }

    /* renamed from: a */
    public static cil m11247a(cih cihVar, dig<cif> digVar) {
        return new cil(cihVar, digVar);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return (C3553ur) dhz.m9438a(this.f13112b.mo9430a().f13095c, "Cannot return null from a non-@Nullable @Provides method");
    }
}
