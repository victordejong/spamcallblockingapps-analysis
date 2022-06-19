package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aua.class */
public final class aua implements dht<Set<auq<dtr>>> {

    /* renamed from: a */
    private final atf f10379a;

    private aua(atf atfVar) {
        this.f10379a = atfVar;
    }

    /* renamed from: a */
    public static aua m12429a(atf atfVar) {
        return new aua(atfVar);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return (Set) dhz.m9438a(Collections.emptySet(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
