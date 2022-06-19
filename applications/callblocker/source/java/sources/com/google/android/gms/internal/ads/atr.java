package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/atr.class */
public final class atr implements dht<Set<auq<aqi>>> {

    /* renamed from: a */
    private final atf f10321a;

    private atr(atf atfVar) {
        this.f10321a = atfVar;
    }

    /* renamed from: a */
    public static atr m12724a(atf atfVar) {
        return new atr(atfVar);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return (Set) dhz.m9438a(this.f10321a.m12762h(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
