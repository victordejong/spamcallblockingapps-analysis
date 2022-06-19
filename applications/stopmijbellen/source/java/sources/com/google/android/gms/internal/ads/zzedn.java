package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzedn.class */
public final class zzedn implements zzgpr<zzedm> {
    private final zzgqe<zzcqm> zza;
    private final zzgqe<Context> zzb;
    private final zzgqe<zzcjf> zzc;
    private final zzgqe<zzfef> zzd;
    private final zzgqe<Executor> zze;
    private final zzgqe<String> zzf;
    private final zzgqe<zzdhk> zzg;
    private final zzgqe<zzdho> zzh;

    public zzedn(zzgqe<zzcqm> zzgqeVar, zzgqe<Context> zzgqeVar2, zzgqe<zzcjf> zzgqeVar3, zzgqe<zzfef> zzgqeVar4, zzgqe<Executor> zzgqeVar5, zzgqe<String> zzgqeVar6, zzgqe<zzdhk> zzgqeVar7, zzgqe<zzdho> zzgqeVar8) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
        this.zzc = zzgqeVar3;
        this.zzd = zzgqeVar4;
        this.zze = zzgqeVar5;
        this.zzf = zzgqeVar6;
        this.zzg = zzgqeVar7;
        this.zzh = zzgqeVar8;
    }

    /* renamed from: zza */
    public final zzedm zzb() {
        zzcqm zzb = this.zza.zzb();
        Context zza = ((zzffh) this.zzb).zza();
        zzcjf zza2 = ((zzcrb) this.zzc).zza();
        zzfef zza3 = ((zzdei) this.zzd).zza();
        zzfxb zzfxbVar = zzcjm.zza;
        zzgpz.zzb(zzfxbVar);
        return new zzedm(zzb, zza, zza2, zza3, zzfxbVar, this.zzf.zzb(), ((zzdhl) this.zzg).zzb(), ((zzdhp) this.zzh).zzb());
    }
}
