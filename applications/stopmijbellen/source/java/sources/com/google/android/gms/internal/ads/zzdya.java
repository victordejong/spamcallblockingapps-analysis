package com.google.android.gms.internal.ads;

import com.facebook.ads.AdError;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdya.class */
public final class zzdya implements zzgpr<zzdyh> {
    public static zzdya zza() {
        zzdya zzdyaVar;
        zzdyaVar = zzdxz.zza;
        return zzdyaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* synthetic */ Object zzb() {
        return new zzdyh(AdError.NO_FILL_ERROR_CODE, AdError.LOAD_TOO_FREQUENTLY_ERROR_CODE, 1003);
    }
}
