package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zza;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdva.class */
public final class zzdva implements zzgpr<zzduv> {
    private final zzgqe<Context> zza;
    private final zzgqe<Executor> zzb;
    private final zzgqe<zzalt> zzc;
    private final zzgqe<zzcjf> zzd;
    private final zzgqe<zza> zze;
    private final zzgqe<zzcpb> zzf;
    private final zzgqe<zzehh> zzg;
    private final zzgqe<zzfjs> zzh;
    private final zzgqe<zzdyz> zzi;
    private final zzgqe<zzfio> zzj;

    public zzdva(zzgqe<Context> zzgqeVar, zzgqe<Executor> zzgqeVar2, zzgqe<zzalt> zzgqeVar3, zzgqe<zzcjf> zzgqeVar4, zzgqe<zza> zzgqeVar5, zzgqe<zzcpb> zzgqeVar6, zzgqe<zzehh> zzgqeVar7, zzgqe<zzfjs> zzgqeVar8, zzgqe<zzdyz> zzgqeVar9, zzgqe<zzfio> zzgqeVar10) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
        this.zzc = zzgqeVar3;
        this.zzd = zzgqeVar4;
        this.zze = zzgqeVar5;
        this.zzf = zzgqeVar6;
        this.zzg = zzgqeVar7;
        this.zzh = zzgqeVar8;
        this.zzi = zzgqeVar9;
        this.zzj = zzgqeVar10;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* synthetic */ Object zzb() {
        return new zzduv(((zzcqr) this.zza).zza(), this.zzb.zzb(), this.zzc.zzb(), ((zzcrb) this.zzd).zza(), zzcuk.zza(), new zzcpb(), this.zzg.zzb(), this.zzh.zzb(), this.zzi.zzb(), this.zzj.zzb());
    }
}
