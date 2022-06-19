package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cii.class */
public final class cii implements dht<Context> {

    /* renamed from: a */
    private final cih f13098a;

    /* renamed from: b */
    private final dig<cif> f13099b;

    private cii(cih cihVar, dig<cif> digVar) {
        this.f13098a = cihVar;
        this.f13099b = digVar;
    }

    /* renamed from: a */
    public static Context m11252a(cih cihVar, cif cifVar) {
        return (Context) dhz.m9438a(cifVar.f13093a, "Cannot return null from a non-@Nullable @Provides method");
    }

    /* renamed from: a */
    public static cii m11251a(cih cihVar, dig<cif> digVar) {
        return new cii(cihVar, digVar);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return m11252a(this.f13098a, this.f13099b.mo9430a());
    }
}
