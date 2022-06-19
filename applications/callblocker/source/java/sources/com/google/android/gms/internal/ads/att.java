package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/att.class */
public final class att implements dht<Set<auq<arg>>> {

    /* renamed from: a */
    private final atf f10323a;

    private att(atf atfVar) {
        this.f10323a = atfVar;
    }

    /* renamed from: a */
    public static att m12722a(atf atfVar) {
        return new att(atfVar);
    }

    /* renamed from: b */
    public static Set<auq<arg>> m12721b(atf atfVar) {
        return (Set) dhz.m9438a(atfVar.m12768b(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return m12721b(this.f10323a);
    }
}
