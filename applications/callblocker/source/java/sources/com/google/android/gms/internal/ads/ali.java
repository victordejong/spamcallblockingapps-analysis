package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ali.class */
public final class ali implements dht<bmv<akk>> {

    /* renamed from: a */
    private final dig<Boolean> f9945a;

    /* renamed from: b */
    private final dig<bpp> f9946b;

    /* renamed from: c */
    private final dig<brh<akk, chs, bof>> f9947c;

    public ali(dig<Boolean> digVar, dig<bpp> digVar2, dig<brh<akk, chs, bof>> digVar3) {
        this.f9945a = digVar;
        this.f9946b = digVar2;
        this.f9947c = digVar3;
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        boolean booleanValue = this.f9945a.mo9430a().booleanValue();
        brh<akk, chs, bof> mo9430a = this.f9946b.mo9430a();
        brh<akk, chs, bof> mo9430a2 = this.f9947c.mo9430a();
        if (!booleanValue) {
            mo9430a = mo9430a2;
        }
        return (bmv) dhz.m9438a(mo9430a, "Cannot return null from a non-@Nullable @Provides method");
    }
}
