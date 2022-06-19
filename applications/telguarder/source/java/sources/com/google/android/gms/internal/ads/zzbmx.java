package com.google.android.gms.internal.ads;

import com.pubmatic.sdk.openwrap.core.POBConstants;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbmx.class */
public final class zzbmx implements zzeqb<String> {
    public static zzbmx zzakh() {
        zzbmx zzbmxVar;
        zzbmxVar = zzbna.zzfvl;
        return zzbmxVar;
    }

    public static String zzaki() {
        return (String) zzeqh.zza(POBConstants.KEY_BANNER, "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return zzaki();
    }
}
