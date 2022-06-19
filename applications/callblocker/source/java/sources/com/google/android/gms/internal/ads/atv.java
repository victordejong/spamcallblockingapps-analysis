package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/atv.class */
public final class atv implements dht<Set<auq<arl>>> {

    /* renamed from: a */
    private final atf f10325a;

    private atv(atf atfVar) {
        this.f10325a = atfVar;
    }

    /* renamed from: a */
    public static atv m12719a(atf atfVar) {
        return new atv(atfVar);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return (Set) dhz.m9438a(this.f10325a.m12761i(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
