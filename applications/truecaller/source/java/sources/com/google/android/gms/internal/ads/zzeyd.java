package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeyd.class */
public final class zzeyd implements zzgla<zzeyc> {
    private final zzgln<Context> zza;
    private final zzgln<Executor> zzb;
    private final zzgln<zzcoj> zzc;
    private final zzgln<zzeli> zzd;
    private final zzgln<zzezc> zze;
    private final zzgln<zzfap> zzf;

    public zzeyd(zzgln<Context> zzglnVar, zzgln<Executor> zzglnVar2, zzgln<zzcoj> zzglnVar3, zzgln<zzeli> zzglnVar4, zzgln<zzezc> zzglnVar5, zzgln<zzfap> zzglnVar6) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
        this.zzc = zzglnVar3;
        this.zzd = zzglnVar4;
        this.zze = zzglnVar5;
        this.zzf = zzglnVar6;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzeyc(this.zza.zzb(), this.zzb.zzb(), this.zzc.zzb(), this.zzd.zzb(), this.zze.zzb(), new zzfap());
    }
}
