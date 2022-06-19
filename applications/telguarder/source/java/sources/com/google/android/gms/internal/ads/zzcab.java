package com.google.android.gms.internal.ads;

import com.pubmatic.sdk.common.POBCommonConstants;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcab.class */
public final class zzcab implements zzeqb<String> {
    public static zzcab zzamx() {
        zzcab zzcabVar;
        zzcabVar = zzcae.zzgbo;
        return zzcabVar;
    }

    public static String zzamy() {
        return (String) zzeqh.zza(POBCommonConstants.INTERSTITIAL_PLACEMENT_TYPE, "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return zzamy();
    }
}
