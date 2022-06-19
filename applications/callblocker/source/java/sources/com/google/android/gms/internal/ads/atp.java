package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/atp.class */
public final class atp implements dht<Set<auq<apv>>> {

    /* renamed from: a */
    private final atf f10319a;

    private atp(atf atfVar) {
        this.f10319a = atfVar;
    }

    /* renamed from: a */
    public static atp m12726a(atf atfVar) {
        return new atp(atfVar);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return (Set) dhz.m9438a(this.f10319a.m12767c(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
