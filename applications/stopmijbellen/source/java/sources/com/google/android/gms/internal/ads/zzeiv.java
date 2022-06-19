package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzaw;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeiv.class */
public final class zzeiv implements zzgpr<zzeiu> {
    private final zzgqe<zzczt> zza;
    private final zzgqe<Context> zzb;
    private final zzgqe<Executor> zzc;
    private final zzgqe<zzdwj> zzd;
    private final zzgqe<zzfef> zze;
    private final zzgqe<zzfpv<zzfdn, zzaw>> zzf;

    public zzeiv(zzgqe<zzczt> zzgqeVar, zzgqe<Context> zzgqeVar2, zzgqe<Executor> zzgqeVar3, zzgqe<zzdwj> zzgqeVar4, zzgqe<zzfef> zzgqeVar5, zzgqe<zzfpv<zzfdn, zzaw>> zzgqeVar6) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
        this.zzc = zzgqeVar3;
        this.zzd = zzgqeVar4;
        this.zze = zzgqeVar5;
        this.zzf = zzgqeVar6;
    }

    /* renamed from: zza */
    public final zzeiu zzb() {
        return new zzeiu(this.zza.zzb(), this.zzb.zzb(), this.zzc.zzb(), this.zzd.zzb(), ((zzdei) this.zze).zza(), this.zzf.zzb());
    }
}
