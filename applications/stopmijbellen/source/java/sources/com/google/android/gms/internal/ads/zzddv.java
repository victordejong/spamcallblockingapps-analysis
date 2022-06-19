package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzddv.class */
public final class zzddv implements zzgpr<zzddu> {
    private final zzgqe<Context> zza;
    private final zzgqe<zzfdn> zzb;
    private final zzgqe<zzcbx> zzc;

    public zzddv(zzgqe<Context> zzgqeVar, zzgqe<zzfdn> zzgqeVar2, zzgqe<zzcbx> zzgqeVar3) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
        this.zzc = zzgqeVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* synthetic */ Object zzb() {
        return new zzddu(this.zza.zzb(), ((zzdbl) this.zzb).zza(), new zzcbx(), null);
    }
}
