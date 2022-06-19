package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzav;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzefe.class */
public final class zzefe implements zzgla<zzefd> {
    private final zzgln<zzcwe> zza;
    private final zzgln<Context> zzb;
    private final zzgln<Executor> zzc;
    private final zzgln<zzdss> zzd;
    private final zzgln<zzfar> zze;
    private final zzgln<zzfln<zzezz, zzav>> zzf;

    public zzefe(zzgln<zzcwe> zzglnVar, zzgln<Context> zzglnVar2, zzgln<Executor> zzglnVar3, zzgln<zzdss> zzglnVar4, zzgln<zzfar> zzglnVar5, zzgln<zzfln<zzezz, zzav>> zzglnVar6) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
        this.zzc = zzglnVar3;
        this.zzd = zzglnVar4;
        this.zze = zzglnVar5;
        this.zzf = zzglnVar6;
    }

    /* renamed from: zza */
    public final zzefd zzb() {
        return new zzefd(this.zza.zzb(), this.zzb.zzb(), this.zzc.zzb(), this.zzd.zzb(), ((zzdat) this.zze).zza(), this.zzf.zzb());
    }
}
