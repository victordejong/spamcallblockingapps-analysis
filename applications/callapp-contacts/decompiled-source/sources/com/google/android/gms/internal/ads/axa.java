package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.reward.AdMetadataListener;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/axa.class */
public final class axa implements dsi<Set<ayi<AdMetadataListener>>> {

    /* renamed from: a  reason: collision with root package name */
    private final awm f23973a;

    private axa(awm awmVar) {
        this.f23973a = awmVar;
    }

    public static axa a(awm awmVar) {
        return new axa(awmVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return (Set) dso.b(this.f23973a.h);
    }
}
