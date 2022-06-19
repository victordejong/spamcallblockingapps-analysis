package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdug.class */
public final class zzdug implements zzgpr<zzduf> {
    private final zzgqe<Context> zza;
    private final zzgqe<zzdqc> zzb;
    private final zzgqe<zzdrb> zzc;
    private final zzgqe<zzdpx> zzd;

    public zzdug(zzgqe<Context> zzgqeVar, zzgqe<zzdqc> zzgqeVar2, zzgqe<zzdrb> zzgqeVar3, zzgqe<zzdpx> zzgqeVar4) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
        this.zzc = zzgqeVar3;
        this.zzd = zzgqeVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzduf(((zzffh) this.zza).zza(), ((zzdqu) this.zzb).zza(), ((zzdrc) this.zzc).zzb(), this.zzd.zzb());
    }
}
