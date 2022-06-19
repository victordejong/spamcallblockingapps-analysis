package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/atq.class */
public final class atq implements dht<Set<auq<AbstractC2792app>>> {

    /* renamed from: a */
    private final atf f10320a;

    private atq(atf atfVar) {
        this.f10320a = atfVar;
    }

    /* renamed from: a */
    public static atq m12725a(atf atfVar) {
        return new atq(atfVar);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return (Set) dhz.m9438a(this.f10320a.m12771a(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
