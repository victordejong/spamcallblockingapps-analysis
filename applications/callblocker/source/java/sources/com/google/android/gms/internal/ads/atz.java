package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/atz.class */
public final class atz implements dht<Set<auq<auv>>> {

    /* renamed from: a */
    private final atf f10376a;

    private atz(atf atfVar) {
        this.f10376a = atfVar;
    }

    /* renamed from: a */
    public static atz m12430a(atf atfVar) {
        return new atz(atfVar);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return (Set) dhz.m9438a(Collections.emptySet(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
