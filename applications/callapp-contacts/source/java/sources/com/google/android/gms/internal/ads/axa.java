package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.reward.AdMetadataListener;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/axa.class */
public final class axa implements dsi<Set<ayi<AdMetadataListener>>> {

    /* renamed from: a */
    private final awm f43287a;

    private axa(awm awmVar) {
        this.f43287a = awmVar;
    }

    /* renamed from: a */
    public static axa m18344a(awm awmVar) {
        return new axa(awmVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return (Set) dso.m15764b(this.f43287a.f43245h);
    }
}
