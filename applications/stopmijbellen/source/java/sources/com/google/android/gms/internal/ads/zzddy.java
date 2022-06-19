package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import com.google.android.gms.ads.internal.util.zzg;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzddy.class */
public final class zzddy implements zzgpr<zzddx> {
    private final zzgqe<zzfie> zza;
    private final zzgqe<zzcjf> zzb;
    private final zzgqe<ApplicationInfo> zzc;
    private final zzgqe<String> zzd;
    private final zzgqe<List<String>> zze;
    private final zzgqe<PackageInfo> zzf;
    private final zzgqe<zzfxa<String>> zzg;
    private final zzgqe<zzg> zzh;
    private final zzgqe<String> zzi;
    private final zzgqe<zzevq<Bundle>> zzj;

    public zzddy(zzgqe<zzfie> zzgqeVar, zzgqe<zzcjf> zzgqeVar2, zzgqe<ApplicationInfo> zzgqeVar3, zzgqe<String> zzgqeVar4, zzgqe<List<String>> zzgqeVar5, zzgqe<PackageInfo> zzgqeVar6, zzgqe<zzfxa<String>> zzgqeVar7, zzgqe<zzg> zzgqeVar8, zzgqe<String> zzgqeVar9, zzgqe<zzevq<Bundle>> zzgqeVar10) {
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

    /* renamed from: zza */
    public final zzddx zzb() {
        return new zzddx(this.zza.zzb(), ((zzcrb) this.zzb).zza(), ((zzecp) this.zzc).zzb(), ((zzecv) this.zzd).zzb(), zzblj.zza(), this.zzf.zzb(), zzgpq.zza(this.zzg), ((zzffg) this.zzh).zzb(), this.zzi.zzb(), ((zzevr) this.zzj).zzb());
    }
}
