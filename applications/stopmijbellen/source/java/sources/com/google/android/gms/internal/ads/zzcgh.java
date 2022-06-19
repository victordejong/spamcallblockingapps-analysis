package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzg;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcgh.class */
public final class zzcgh implements zzgpr<zzcgg> {
    private final zzgqe<Context> zza;
    private final zzgqe<zzg> zzb;
    private final zzgqe<zzchh> zzc;

    public zzcgh(zzgqe<Context> zzgqeVar, zzgqe<zzg> zzgqeVar2, zzgqe<zzchh> zzgqeVar3) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
        this.zzc = zzgqeVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzcgg(this.zza.zzb(), this.zzb.zzb(), this.zzc.zzb());
    }
}
