package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/axq.class */
public final class axq implements dht<Set<String>> {

    /* renamed from: a */
    private final dig<azg> f10528a;

    public axq(dig<azg> digVar) {
        this.f10528a = digVar;
    }

    /* renamed from: a */
    public static Set<String> m12343a(azg azgVar) {
        return (Set) dhz.m9438a(azgVar.m12213d() != null ? Collections.singleton("banner") : Collections.emptySet(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return m12343a(this.f10528a.mo9430a());
    }
}
