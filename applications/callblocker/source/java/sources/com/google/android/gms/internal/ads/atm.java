package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/atm.class */
public final class atm implements dht<Set<auq<dxs>>> {

    /* renamed from: a */
    private final atf f10316a;

    private atm(atf atfVar) {
        this.f10316a = atfVar;
    }

    /* renamed from: a */
    public static atm m12729a(atf atfVar) {
        return new atm(atfVar);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return (Set) dhz.m9438a(this.f10316a.m12763g(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
