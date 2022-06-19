package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.reward.AdMetadataListener;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbtc.class */
public final class zzbtc implements zzeqb<zzbta> {
    private final zzeqo<Set<zzbya<AdMetadataListener>>> zzfvd;

    private zzbtc(zzeqo<Set<zzbya<AdMetadataListener>>> zzeqoVar) {
        this.zzfvd = zzeqoVar;
    }

    public static zzbtc zzm(zzeqo<Set<zzbya<AdMetadataListener>>> zzeqoVar) {
        return new zzbtc(zzeqoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzbta(this.zzfvd.get());
    }
}
