package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.AbstractC2328o;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aof.class */
public final class aof implements dht<auq<AbstractC2328o>> {

    /* renamed from: a */
    private final aod f10104a;

    /* renamed from: b */
    private final dig<anc> f10105b;

    private aof(aod aodVar, dig<anc> digVar) {
        this.f10104a = aodVar;
        this.f10105b = digVar;
    }

    /* renamed from: a */
    public static aof m12867a(aod aodVar, dig<anc> digVar) {
        return new aof(aodVar, digVar);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return (auq) dhz.m9438a(new auq(this.f10105b.mo9430a(), C3650yg.f17647f), "Cannot return null from a non-@Nullable @Provides method");
    }
}
