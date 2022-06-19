package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.api */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/api.class */
public final class C2791api implements dht<chh> {

    /* renamed from: a */
    private final apb f10184a;

    private C2791api(apb apbVar) {
        this.f10184a = apbVar;
    }

    /* renamed from: a */
    public static C2791api m12821a(apb apbVar) {
        return new C2791api(apbVar);
    }

    /* renamed from: b */
    public static chh m12820b(apb apbVar) {
        return (chh) dhz.m9438a(apbVar.m12845b(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return m12820b(this.f10184a);
    }
}
