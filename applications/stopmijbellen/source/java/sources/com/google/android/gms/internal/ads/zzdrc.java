package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzg;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdrc.class */
public final class zzdrc implements zzgpr<zzdrb> {
    private final zzgqe<zzg> zza;
    private final zzgqe<zzfef> zzb;
    private final zzgqe<zzdqh> zzc;
    private final zzgqe<zzdqc> zzd;
    private final zzgqe<zzdrm> zze;
    private final zzgqe<zzdru> zzf;
    private final zzgqe<Executor> zzg;
    private final zzgqe<Executor> zzh;
    private final zzgqe<zzdpz> zzi;

    public zzdrc(zzgqe<zzg> zzgqeVar, zzgqe<zzfef> zzgqeVar2, zzgqe<zzdqh> zzgqeVar3, zzgqe<zzdqc> zzgqeVar4, zzgqe<zzdrm> zzgqeVar5, zzgqe<zzdru> zzgqeVar6, zzgqe<Executor> zzgqeVar7, zzgqe<Executor> zzgqeVar8, zzgqe<zzdpz> zzgqeVar9) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
        this.zzc = zzgqeVar3;
        this.zzd = zzgqeVar4;
        this.zze = zzgqeVar5;
        this.zzf = zzgqeVar6;
        this.zzg = zzgqeVar7;
        this.zzh = zzgqeVar8;
        this.zzi = zzgqeVar9;
    }

    /* renamed from: zza */
    public final zzdrb zzb() {
        zzg zzb = ((zzffg) this.zza).zzb();
        zzfef zza = ((zzdei) this.zzb).zza();
        zzdqh zzb2 = this.zzc.zzb();
        zzdqc zza2 = ((zzdqu) this.zzd).zza();
        zzdrm zzb3 = this.zze.zzb();
        zzdru zzb4 = this.zzf.zzb();
        Executor zzb5 = this.zzg.zzb();
        zzfxb zzfxbVar = zzcjm.zza;
        zzgpz.zzb(zzfxbVar);
        return new zzdrb(zzb, zza, zzb2, zza2, zzb3, zzb4, zzb5, zzfxbVar, this.zzi.zzb());
    }
}
