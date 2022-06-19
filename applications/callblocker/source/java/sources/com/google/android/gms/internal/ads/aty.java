package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.p118a.AbstractC2244a;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aty.class */
public final class aty implements dht<Set<auq<AbstractC2244a>>> {

    /* renamed from: a */
    private final atf f10375a;

    private aty(atf atfVar) {
        this.f10375a = atfVar;
    }

    /* renamed from: a */
    public static aty m12431a(atf atfVar) {
        return new aty(atfVar);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return (Set) dhz.m9438a(this.f10375a.m12764f(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
