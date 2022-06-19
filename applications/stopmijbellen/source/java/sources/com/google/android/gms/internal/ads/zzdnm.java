package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdnm.class */
public final class zzdnm implements zzgpr<zzdlw<zzdjh>> {
    private final zzdna zza;
    private final zzgqe<Executor> zzb;

    public zzdnm(zzdna zzdnaVar, zzgqe<Executor> zzgqeVar) {
        this.zza = zzdnaVar;
        this.zzb = zzgqeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        return this.zza.zzd(this.zzb.zzb());
    }
}
