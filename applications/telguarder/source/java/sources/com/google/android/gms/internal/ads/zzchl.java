package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzug;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzchl.class */
public final class zzchl implements zzeqb<zzug.zza.EnumC2617zza> {
    private final zzeqo<zzdnp> zzfvf;

    public zzchl(zzeqo<zzdnp> zzeqoVar) {
        this.zzfvf = zzeqoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzug.zza.EnumC2617zza) zzeqh.zza(this.zzfvf.get().zzhle.zzhki == zzdnh.zzhkm ? zzug.zza.EnumC2617zza.REWARDED_INTERSTITIAL : zzug.zza.EnumC2617zza.REWARD_BASED_VIDEO_AD, "Cannot return null from a non-@Nullable @Provides method");
    }
}
