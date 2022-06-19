package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/atl.class */
public final class atl implements dht<Set<auq<arg>>> {

    /* renamed from: a */
    private final atf f10315a;

    private atl(atf atfVar) {
        this.f10315a = atfVar;
    }

    /* renamed from: a */
    public static atl m12731a(atf atfVar) {
        return new atl(atfVar);
    }

    /* renamed from: b */
    public static Set<auq<arg>> m12730b(atf atfVar) {
        return (Set) dhz.m9438a(Collections.emptySet(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return m12730b(this.f10315a);
    }
}
