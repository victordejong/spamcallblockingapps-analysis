package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcsi.class */
final class zzcsi implements zzeym {
    private final zzcui zza;
    private final zzcsi zzb = this;
    private final zzgqe<Context> zzc;
    private final zzgqe<String> zzd;
    private final zzgqe<zzfbc<zzcxz, zzcyf>> zze;
    private final zzgqe<zzezj> zzf;
    private final zzgqe<zzeyd> zzg;
    private final zzgqe<zzeyj> zzh;
    private final zzgqe<zzfbc<zzcyk, zzcyp>> zzi;
    private final zzgqe<zzezl> zzj;
    private final zzgqe<zzezr> zzk;

    public /* synthetic */ zzcsi(zzcui zzcuiVar, Context context, String str, zzcsh zzcshVar) {
        zzgqe zzgqeVar;
        zzgqe zzgqeVar2;
        zzgqe zzgqeVar3;
        zzgqe zzgqeVar4;
        zzgqe zzgqeVar5;
        zzgqe zzgqeVar6;
        zzgqe zzgqeVar7;
        zzgqe zzgqeVar8;
        zzgqe zzgqeVar9;
        zzgqe zzgqeVar10;
        zzgqe zzgqeVar11;
        zzgqe zzgqeVar12;
        this.zza = zzcuiVar;
        zzgpr zza = zzgps.zza(context);
        this.zzc = zza;
        zzgpr zza2 = zzgps.zza(str);
        this.zzd = zza2;
        zzgqeVar = zzcuiVar.zzau;
        zzgqeVar2 = zzcuiVar.zzav;
        zzfbg zzfbgVar = new zzfbg(zza, zzgqeVar, zzgqeVar2);
        this.zze = zzfbgVar;
        zzgqeVar3 = zzcuiVar.zzau;
        zzgqe<zzezj> zzc = zzgpq.zzc(new zzezk(zzgqeVar3));
        this.zzf = zzc;
        zzgqeVar4 = zzcuiVar.zzp;
        zzgqeVar5 = zzcuiVar.zzO;
        zzgqe<zzeyd> zzc2 = zzgpq.zzc(new zzeye(zza, zzgqeVar4, zzgqeVar5, zzfbgVar, zzc, zzfeh.zza()));
        this.zzg = zzc2;
        zzgqeVar6 = zzcuiVar.zzO;
        zzgqeVar7 = zzcuiVar.zzi;
        this.zzh = zzgpq.zzc(new zzeyk(zzgqeVar6, zza, zza2, zzc2, zzc, zzgqeVar7));
        zzgqeVar8 = zzcuiVar.zzau;
        zzgqeVar9 = zzcuiVar.zzav;
        zzfbf zzfbfVar = new zzfbf(zza, zzgqeVar8, zzgqeVar9);
        this.zzi = zzfbfVar;
        zzgqeVar10 = zzcuiVar.zzp;
        zzgqeVar11 = zzcuiVar.zzO;
        zzgqe<zzezl> zzc3 = zzgpq.zzc(new zzezm(zza, zzgqeVar10, zzgqeVar11, zzfbfVar, zzc, zzfeh.zza()));
        this.zzj = zzc3;
        zzgqeVar12 = zzcuiVar.zzO;
        this.zzk = zzgpq.zzc(new zzezs(zzgqeVar12, zza, zza2, zzc3, zzc));
    }

    @Override // com.google.android.gms.internal.ads.zzeym
    public final zzeyj zza() {
        return this.zzh.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzeym
    public final zzezr zzb() {
        return this.zzk.zzb();
    }
}
