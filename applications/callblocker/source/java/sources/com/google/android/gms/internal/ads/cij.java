package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cij.class */
public final class cij implements dht<cif> {

    /* renamed from: a */
    private final cih f13100a;

    /* renamed from: b */
    private final dig<cid> f13101b;

    /* renamed from: c */
    private final dig<String> f13102c;

    private cij(cih cihVar, dig<cid> digVar, dig<String> digVar2) {
        this.f13100a = cihVar;
        this.f13101b = digVar;
        this.f13102c = digVar2;
    }

    /* renamed from: a */
    public static cij m11250a(cih cihVar, dig<cid> digVar, dig<String> digVar2) {
        return new cij(cihVar, digVar, digVar2);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return (cif) dhz.m9438a(this.f13101b.mo9430a().m11256a(this.f13102c.mo9430a()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
