package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/apg.class */
public final class apg implements dht<String> {

    /* renamed from: a */
    private final apb f10181a;

    /* renamed from: b */
    private final dig<ant> f10182b;

    private apg(apb apbVar, dig<ant> digVar) {
        this.f10181a = apbVar;
        this.f10182b = digVar;
    }

    /* renamed from: a */
    public static apg m12823a(apb apbVar, dig<ant> digVar) {
        return new apg(apbVar, digVar);
    }

    /* renamed from: a */
    public static String m12824a(apb apbVar, ant antVar) {
        return (String) dhz.m9438a(antVar.m12878i(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return m12824a(this.f10181a, this.f10182b.mo9430a());
    }
}
