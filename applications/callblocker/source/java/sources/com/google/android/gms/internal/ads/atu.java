package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/atu.class */
public final class atu implements dht<Set<auq<arw>>> {

    /* renamed from: a */
    private final atf f10324a;

    private atu(atf atfVar) {
        this.f10324a = atfVar;
    }

    /* renamed from: a */
    public static atu m12720a(atf atfVar) {
        return new atu(atfVar);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return (Set) dhz.m9438a(this.f10324a.m12760j(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
