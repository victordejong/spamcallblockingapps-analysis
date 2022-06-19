package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeio.class */
public final class zzeio implements zzgla<zzein> {
    private final zzgln<Context> zza;
    private final zzgln<zzcgz> zzb;
    private final zzgln<zzfar> zzc;
    private final zzgln<Executor> zzd;
    private final zzgln<zzdsb> zze;
    private final zzgln<zzdss> zzf;
    private final zzgln<zzbpu> zzg;

    public zzeio(zzgln<Context> zzglnVar, zzgln<zzcgz> zzglnVar2, zzgln<zzfar> zzglnVar3, zzgln<Executor> zzglnVar4, zzgln<zzdsb> zzglnVar5, zzgln<zzdss> zzglnVar6, zzgln<zzbpu> zzglnVar7) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
        this.zzc = zzglnVar3;
        this.zzd = zzglnVar4;
        this.zze = zzglnVar5;
        this.zzf = zzglnVar6;
        this.zzg = zzglnVar7;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzein(this.zza.zzb(), ((zzcox) this.zzb).zza(), ((zzdat) this.zzc).zza(), this.zzd.zzb(), this.zze.zzb(), this.zzf.zzb(), new zzbpu());
    }
}
