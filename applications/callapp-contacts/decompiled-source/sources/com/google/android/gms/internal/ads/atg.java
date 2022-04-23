package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.reward.AdMetadataListener;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/atg.class */
public final class atg implements dsi<ate> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<Set<ayi<AdMetadataListener>>> f23863a;

    private atg(dsv<Set<ayi<AdMetadataListener>>> dsvVar) {
        this.f23863a = dsvVar;
    }

    public static atg a(dsv<Set<ayi<AdMetadataListener>>> dsvVar) {
        return new atg(dsvVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new ate(this.f23863a.a());
    }
}
