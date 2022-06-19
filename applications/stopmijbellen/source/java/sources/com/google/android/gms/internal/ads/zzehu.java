package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.VisibleForTesting;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzehu.class */
public final class zzehu<DelegateT, AdapterT> implements zzeht<AdapterT> {
    @VisibleForTesting
    public final zzeht<DelegateT> zza;
    private final zzfpv<DelegateT, AdapterT> zzb;

    public zzehu(zzeht<DelegateT> zzehtVar, zzfpv<DelegateT, AdapterT> zzfpvVar) {
        this.zza = zzehtVar;
        this.zzb = zzfpvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeht
    public final zzfxa<AdapterT> zza(zzfdz zzfdzVar, zzfdn zzfdnVar) {
        return zzfwq.zzm(this.zza.zza(zzfdzVar, zzfdnVar), this.zzb, zzcjm.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzeht
    public final boolean zzb(zzfdz zzfdzVar, zzfdn zzfdnVar) {
        return this.zza.zzb(zzfdzVar, zzfdnVar);
    }
}
