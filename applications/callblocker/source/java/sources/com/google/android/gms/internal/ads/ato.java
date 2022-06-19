package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ato.class */
public final class ato implements dht<Set<auq<aqe>>> {

    /* renamed from: a */
    private final atf f10318a;

    private ato(atf atfVar) {
        this.f10318a = atfVar;
    }

    /* renamed from: a */
    public static ato m12727a(atf atfVar) {
        return new ato(atfVar);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return (Set) dhz.m9438a(this.f10318a.m12766d(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
