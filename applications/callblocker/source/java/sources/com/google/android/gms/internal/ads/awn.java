package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/awn.class */
public final class awn implements dht<awo> {

    /* renamed from: a */
    private final dig<aro> f10472a;

    /* renamed from: b */
    private final dig<aum> f10473b;

    private awn(dig<aro> digVar, dig<aum> digVar2) {
        this.f10472a = digVar;
        this.f10473b = digVar2;
    }

    /* renamed from: a */
    public static awn m12378a(dig<aro> digVar, dig<aum> digVar2) {
        return new awn(digVar, digVar2);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return new awo(this.f10472a.mo9430a(), this.f10473b.mo9430a());
    }
}
