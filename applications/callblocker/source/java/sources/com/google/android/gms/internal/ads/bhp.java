package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.AbstractC2708e;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bhp.class */
public final class bhp implements dht<bhn> {

    /* renamed from: a */
    private final dig<bhg> f11270a;

    /* renamed from: b */
    private final dig<Set<bhm>> f11271b;

    /* renamed from: c */
    private final dig<AbstractC2708e> f11272c;

    private bhp(dig<bhg> digVar, dig<Set<bhm>> digVar2, dig<AbstractC2708e> digVar3) {
        this.f11270a = digVar;
        this.f11271b = digVar2;
        this.f11272c = digVar3;
    }

    /* renamed from: a */
    public static bhp m11921a(dig<bhg> digVar, dig<Set<bhm>> digVar2, dig<AbstractC2708e> digVar3) {
        return new bhp(digVar, digVar2, digVar3);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return new bhn(this.f11270a.mo9430a(), this.f11271b.mo9430a(), this.f11272c.mo9430a());
    }
}
