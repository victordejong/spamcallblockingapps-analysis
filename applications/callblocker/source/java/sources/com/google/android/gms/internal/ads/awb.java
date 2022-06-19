package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/awb.class */
public final class awb implements dht<auq<arg>> {

    /* renamed from: a */
    private final avv f10455a;

    /* renamed from: b */
    private final dig<axa> f10456b;

    private awb(avv avvVar, dig<axa> digVar) {
        this.f10455a = avvVar;
        this.f10456b = digVar;
    }

    /* renamed from: a */
    public static awb m12389a(avv avvVar, dig<axa> digVar) {
        return new awb(avvVar, digVar);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return (auq) dhz.m9438a(new auq(this.f10456b.mo9430a(), C3650yg.f17646e), "Cannot return null from a non-@Nullable @Provides method");
    }
}
