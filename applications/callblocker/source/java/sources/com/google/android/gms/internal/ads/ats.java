package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.reward.C2391a;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ats.class */
public final class ats implements dht<Set<auq<C2391a>>> {

    /* renamed from: a */
    private final atf f10322a;

    private ats(atf atfVar) {
        this.f10322a = atfVar;
    }

    /* renamed from: a */
    public static ats m12723a(atf atfVar) {
        return new ats(atfVar);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return (Set) dhz.m9438a(this.f10322a.m12765e(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
