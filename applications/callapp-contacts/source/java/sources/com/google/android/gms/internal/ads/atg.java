package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.reward.AdMetadataListener;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/atg.class */
public final class atg implements dsi<ate> {

    /* renamed from: a */
    private final dsv<Set<ayi<AdMetadataListener>>> f43149a;

    private atg(dsv<Set<ayi<AdMetadataListener>>> dsvVar) {
        this.f43149a = dsvVar;
    }

    /* renamed from: a */
    public static atg m18418a(dsv<Set<ayi<AdMetadataListener>>> dsvVar) {
        return new atg(dsvVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new ate(this.f43149a.mo14005a());
    }
}
