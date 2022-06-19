package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aon.class */
public final class aon implements dht<auq<ash>> {

    /* renamed from: a */
    private final aoo f10126a;

    /* renamed from: b */
    private final dig<aom> f10127b;

    private aon(aoo aooVar, dig<aom> digVar) {
        this.f10126a = aooVar;
        this.f10127b = digVar;
    }

    /* renamed from: a */
    public static aon m12860a(aoo aooVar, dig<aom> digVar) {
        return new aon(aooVar, digVar);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return (auq) dhz.m9438a(new auq(this.f10127b.mo9430a(), C3650yg.f17647f), "Cannot return null from a non-@Nullable @Provides method");
    }
}
