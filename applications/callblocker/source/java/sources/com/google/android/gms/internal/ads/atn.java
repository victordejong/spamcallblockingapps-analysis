package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/atn.class */
public final class atn implements dht<Set<auq<asl>>> {

    /* renamed from: a */
    private final atf f10317a;

    private atn(atf atfVar) {
        this.f10317a = atfVar;
    }

    /* renamed from: a */
    public static atn m12728a(atf atfVar) {
        return new atn(atfVar);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return (Set) dhz.m9438a(Collections.emptySet(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
