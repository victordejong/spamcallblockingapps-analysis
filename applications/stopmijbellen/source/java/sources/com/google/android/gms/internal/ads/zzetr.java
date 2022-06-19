package com.google.android.gms.internal.ads;

import android.content.pm.PackageInfo;
import com.google.android.gms.ads.internal.util.zzg;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzetr.class */
public final class zzetr implements zzgpr<zzetp> {
    private final zzgqe<zzfxb> zza;
    private final zzgqe<zzfef> zzb;
    private final zzgqe<PackageInfo> zzc;
    private final zzgqe<zzg> zzd;

    public zzetr(zzgqe<zzfxb> zzgqeVar, zzgqe<zzfef> zzgqeVar2, zzgqe<PackageInfo> zzgqeVar3, zzgqe<zzg> zzgqeVar4) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
        this.zzc = zzgqeVar3;
        this.zzd = zzgqeVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzfxb zzfxbVar = zzcjm.zza;
        zzgpz.zzb(zzfxbVar);
        return new zzetp(zzfxbVar, ((zzdei) this.zzb).zza(), this.zzc.zzb(), ((zzffg) this.zzd).zzb());
    }
}
