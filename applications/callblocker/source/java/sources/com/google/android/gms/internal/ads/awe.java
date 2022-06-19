package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.AbstractC2328o;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/awe.class */
public final class awe implements dht<auq<AbstractC2328o>> {

    /* renamed from: a */
    private final avv f10459a;

    /* renamed from: b */
    private final dig<axa> f10460b;

    private awe(avv avvVar, dig<axa> digVar) {
        this.f10459a = avvVar;
        this.f10460b = digVar;
    }

    /* renamed from: a */
    public static awe m12387a(avv avvVar, dig<axa> digVar) {
        return new awe(avvVar, digVar);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return (auq) dhz.m9438a(new auq(this.f10460b.mo9430a(), C3650yg.f17646e), "Cannot return null from a non-@Nullable @Provides method");
    }
}
