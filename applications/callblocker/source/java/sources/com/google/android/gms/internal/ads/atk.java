package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.AbstractC2328o;
import java.util.Collections;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/atk.class */
public final class atk implements dht<Set<auq<AbstractC2328o>>> {

    /* renamed from: a */
    private final atf f10314a;

    private atk(atf atfVar) {
        this.f10314a = atfVar;
    }

    /* renamed from: a */
    public static atk m12732a(atf atfVar) {
        return new atk(atfVar);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return (Set) dhz.m9438a(Collections.emptySet(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
