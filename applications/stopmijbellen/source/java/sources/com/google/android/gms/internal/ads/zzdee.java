package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdee.class */
public final class zzdee implements zzgpr<Context> {
    private final zzded zza;
    private final zzgqe<Context> zzb;

    public zzdee(zzded zzdedVar, zzgqe<Context> zzgqeVar) {
        this.zza = zzdedVar;
        this.zzb = zzgqeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        Context zza = this.zza.zza(((zzffh) this.zzb).zza());
        zzgpz.zzb(zza);
        return zza;
    }
}
