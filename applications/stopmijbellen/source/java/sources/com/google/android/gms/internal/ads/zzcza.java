package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcza.class */
public final class zzcza implements zzgpr<zzcyz> {
    private final zzgqe<zzdau> zza;
    private final zzgqe<Context> zzb;
    private final zzgqe<zzfdo> zzc;
    private final zzgqe<View> zzd;
    private final zzgqe<zzcop> zze;
    private final zzgqe<zzdat> zzf;
    private final zzgqe<zzdqn> zzg;
    private final zzgqe<zzdmf> zzh;
    private final zzgqe<zzenz> zzi;
    private final zzgqe<Executor> zzj;

    public zzcza(zzgqe<zzdau> zzgqeVar, zzgqe<Context> zzgqeVar2, zzgqe<zzfdo> zzgqeVar3, zzgqe<View> zzgqeVar4, zzgqe<zzcop> zzgqeVar5, zzgqe<zzdat> zzgqeVar6, zzgqe<zzdqn> zzgqeVar7, zzgqe<zzdmf> zzgqeVar8, zzgqe<zzenz> zzgqeVar9, zzgqe<Executor> zzgqeVar10) {
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

    public static zzcyz zzc(zzdau zzdauVar, Context context, zzfdo zzfdoVar, View view, zzcop zzcopVar, zzdat zzdatVar, zzdqn zzdqnVar, zzdmf zzdmfVar, zzgpl<zzenz> zzgplVar, Executor executor) {
        return new zzcyz(zzdauVar, context, zzfdoVar, view, zzcopVar, zzdatVar, zzdqnVar, zzdmfVar, zzgplVar, executor);
    }

    /* renamed from: zza */
    public final zzcyz zzb() {
        return new zzcyz(((zzdcq) this.zza).zzb(), this.zzb.zzb(), ((zzczg) this.zzc).zza(), ((zzczf) this.zzd).zza(), ((zzczr) this.zze).zza(), ((zzczh) this.zzf).zza(), ((zzdon) this.zzg).zza(), this.zzh.zzb(), zzgpq.zza(this.zzi), this.zzj.zzb());
    }
}
