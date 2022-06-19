package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.C2387p;
import java.util.Collections;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aue.class */
public final class aue implements dht<Set<auq<C2387p.C2388a>>> {

    /* renamed from: a */
    private final atf f10384a;

    private aue(atf atfVar) {
        this.f10384a = atfVar;
    }

    /* renamed from: a */
    public static aue m12426a(atf atfVar) {
        return new aue(atfVar);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return (Set) dhz.m9438a(Collections.emptySet(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
