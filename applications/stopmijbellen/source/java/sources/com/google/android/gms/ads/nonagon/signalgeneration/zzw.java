package com.google.android.gms.ads.nonagon.signalgeneration;

import android.content.Context;
import com.google.android.gms.internal.ads.zzalt;
import com.google.android.gms.internal.ads.zzcjf;
import com.google.android.gms.internal.ads.zzcjm;
import com.google.android.gms.internal.ads.zzcqm;
import com.google.android.gms.internal.ads.zzcqr;
import com.google.android.gms.internal.ads.zzcrb;
import com.google.android.gms.internal.ads.zzduy;
import com.google.android.gms.internal.ads.zzdyz;
import com.google.android.gms.internal.ads.zzfew;
import com.google.android.gms.internal.ads.zzfio;
import com.google.android.gms.internal.ads.zzfjs;
import com.google.android.gms.internal.ads.zzfxb;
import com.google.android.gms.internal.ads.zzgpr;
import com.google.android.gms.internal.ads.zzgpz;
import com.google.android.gms.internal.ads.zzgqe;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/nonagon/signalgeneration/zzw.class */
public final class zzw implements zzgpr<zzv> {
    private final zzgqe<zzcqm> zza;
    private final zzgqe<Context> zzb;
    private final zzgqe<zzalt> zzc;
    private final zzgqe<zzfew<zzduy>> zzd;
    private final zzgqe<zzfxb> zze;
    private final zzgqe<ScheduledExecutorService> zzf;
    private final zzgqe<zzdyz> zzg;
    private final zzgqe<zzfio> zzh;
    private final zzgqe<zzfjs> zzi;
    private final zzgqe<zzcjf> zzj;

    public zzw(zzgqe<zzcqm> zzgqeVar, zzgqe<Context> zzgqeVar2, zzgqe<zzalt> zzgqeVar3, zzgqe<zzfew<zzduy>> zzgqeVar4, zzgqe<zzfxb> zzgqeVar5, zzgqe<ScheduledExecutorService> zzgqeVar6, zzgqe<zzdyz> zzgqeVar7, zzgqe<zzfio> zzgqeVar8, zzgqe<zzfjs> zzgqeVar9, zzgqe<zzcjf> zzgqeVar10) {
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
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzcqm zzb = this.zza.zzb();
        Context zza = ((zzcqr) this.zzb).zza();
        zzalt zzb2 = this.zzc.zzb();
        zzfew<zzduy> zzb3 = this.zzd.zzb();
        zzfxb zzfxbVar = zzcjm.zza;
        zzgpz.zzb(zzfxbVar);
        return new zzv(zzb, zza, zzb2, zzb3, zzfxbVar, this.zzf.zzb(), this.zzg.zzb(), this.zzh.zzb(), this.zzi.zzb(), ((zzcrb) this.zzj).zza());
    }
}
