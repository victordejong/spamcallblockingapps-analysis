package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zza;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdtc.class */
public final class zzdtc implements zzgpr<zzdtb> {
    private final zzgqe<Context> zza;
    private final zzgqe<zzdsk> zzb;
    private final zzgqe<zzalt> zzc;
    private final zzgqe<zzcjf> zzd;
    private final zzgqe<zza> zze;
    private final zzgqe<zzbay> zzf;
    private final zzgqe<Executor> zzg;
    private final zzgqe<zzfef> zzh;
    private final zzgqe<zzdtt> zzi;
    private final zzgqe<zzdwj> zzj;
    private final zzgqe<ScheduledExecutorService> zzk;
    private final zzgqe<zzdyz> zzl;
    private final zzgqe<zzfio> zzm;
    private final zzgqe<zzfjs> zzn;
    private final zzgqe<zzehh> zzo;
    private final zzgqe<zzdve> zzp;

    public zzdtc(zzgqe<Context> zzgqeVar, zzgqe<zzdsk> zzgqeVar2, zzgqe<zzalt> zzgqeVar3, zzgqe<zzcjf> zzgqeVar4, zzgqe<zza> zzgqeVar5, zzgqe<zzbay> zzgqeVar6, zzgqe<Executor> zzgqeVar7, zzgqe<zzfef> zzgqeVar8, zzgqe<zzdtt> zzgqeVar9, zzgqe<zzdwj> zzgqeVar10, zzgqe<ScheduledExecutorService> zzgqeVar11, zzgqe<zzdyz> zzgqeVar12, zzgqe<zzfio> zzgqeVar13, zzgqe<zzfjs> zzgqeVar14, zzgqe<zzehh> zzgqeVar15, zzgqe<zzdve> zzgqeVar16) {
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
        this.zzk = zzgqeVar11;
        this.zzl = zzgqeVar12;
        this.zzm = zzgqeVar13;
        this.zzn = zzgqeVar14;
        this.zzo = zzgqeVar15;
        this.zzp = zzgqeVar16;
    }

    /* renamed from: zza */
    public final zzdtb zzb() {
        Context zzb = this.zza.zzb();
        zzdsk zzb2 = this.zzb.zzb();
        zzalt zzb3 = this.zzc.zzb();
        zzcjf zza = ((zzcrb) this.zzd).zza();
        zza zza2 = zzcuk.zza();
        zzbay zzb4 = this.zzf.zzb();
        zzfxb zzfxbVar = zzcjm.zza;
        zzgpz.zzb(zzfxbVar);
        return new zzdtb(zzb, zzb2, zzb3, zza, zza2, zzb4, zzfxbVar, ((zzdei) this.zzh).zza(), this.zzi.zzb(), this.zzj.zzb(), this.zzk.zzb(), this.zzl.zzb(), this.zzm.zzb(), this.zzn.zzb(), this.zzo.zzb(), this.zzp.zzb());
    }
}
