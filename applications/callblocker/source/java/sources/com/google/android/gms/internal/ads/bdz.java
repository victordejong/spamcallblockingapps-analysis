package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bdz.class */
public final class bdz implements dht<bmv<bdr>> {

    /* renamed from: a */
    private final dig<brh<bdr, chs, boe>> f11052a;

    /* renamed from: b */
    private final dig<brh<bdr, chs, bof>> f11053b;

    /* renamed from: c */
    private final dig<chh> f11054c;

    public bdz(dig<brh<bdr, chs, boe>> digVar, dig<brh<bdr, chs, bof>> digVar2, dig<chh> digVar3) {
        this.f11052a = digVar;
        this.f11053b = digVar2;
        this.f11054c = digVar3;
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        Object obj;
        dig<brh<bdr, chs, boe>> digVar = this.f11052a;
        dig<brh<bdr, chs, bof>> digVar2 = this.f11053b;
        switch (bdw.f11050a[this.f11054c.mo9430a().f13050n.f13011a - 1]) {
            case 1:
                obj = (bmv) digVar.mo9430a();
                break;
            default:
                obj = (bmv) digVar2.mo9430a();
                break;
        }
        return (bmv) dhz.m9438a(obj, "Cannot return null from a non-@Nullable @Provides method");
    }
}
