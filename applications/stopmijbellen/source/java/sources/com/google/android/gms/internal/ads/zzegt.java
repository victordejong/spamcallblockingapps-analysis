package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzg;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzegt.class */
public final class zzegt implements zzgpr<zzegs> {
    private final zzgqe<Context> zza;
    private final zzgqe<zzddx> zzb;
    private final zzgqe<zzegl> zzc;
    private final zzgqe<zzegh> zzd;
    private final zzgqe<zzg> zze;

    public zzegt(zzgqe<Context> zzgqeVar, zzgqe<zzddx> zzgqeVar2, zzgqe<zzegl> zzgqeVar3, zzgqe<zzegh> zzgqeVar4, zzgqe<zzg> zzgqeVar5) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
        this.zzc = zzgqeVar3;
        this.zzd = zzgqeVar4;
        this.zze = zzgqeVar5;
    }

    /* renamed from: zza */
    public final zzegs zzb() {
        return new zzegs(((zzffh) this.zza).zza(), ((zzddy) this.zzb).zzb(), this.zzc.zzb(), ((zzegi) this.zzd).zzb(), ((zzffg) this.zze).zzb());
    }
}
