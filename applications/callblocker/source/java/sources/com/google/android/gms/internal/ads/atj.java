package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/atj.class */
public final class atj implements dht<apt> {

    /* renamed from: a */
    private final atf f10312a;

    /* renamed from: b */
    private final dig<Set<auq<apv>>> f10313b;

    private atj(atf atfVar, dig<Set<auq<apv>>> digVar) {
        this.f10312a = atfVar;
        this.f10313b = digVar;
    }

    /* renamed from: a */
    public static atj m12733a(atf atfVar, dig<Set<auq<apv>>> digVar) {
        return new atj(atfVar, digVar);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return (apt) dhz.m9438a(this.f10312a.m12769a(this.f10313b.mo9430a()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
