package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/akx.class */
public final class akx implements dht<akk> {

    /* renamed from: a */
    private final ako f9924a;

    /* renamed from: b */
    private final dig<akm> f9925b;

    public akx(ako akoVar, dig<akm> digVar) {
        this.f9924a = akoVar;
        this.f9925b = digVar;
    }

    /* renamed from: a */
    public static akk m12982a(ako akoVar, Object obj) {
        return (akk) dhz.m9438a((akm) obj, "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return m12982a(this.f9924a, this.f9925b.mo9430a());
    }
}
