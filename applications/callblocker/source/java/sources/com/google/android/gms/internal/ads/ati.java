package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ati.class */
public final class ati implements dht<Set<auq<aql>>> {

    /* renamed from: a */
    private final atf f10311a;

    private ati(atf atfVar) {
        this.f10311a = atfVar;
    }

    /* renamed from: a */
    public static ati m12734a(atf atfVar) {
        return new ati(atfVar);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return (Set) dhz.m9438a(Collections.emptySet(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
