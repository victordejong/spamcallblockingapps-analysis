package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzg;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzczv.class */
public final class zzczv implements zzgla<zzczu> {
    private final zzgln<Context> zza;
    private final zzgln<zzfar> zzb;
    private final zzgln<zzcgz> zzc;
    private final zzgln<zzg> zzd;
    private final zzgln<zzdxk> zze;

    public zzczv(zzgln<Context> zzglnVar, zzgln<zzfar> zzglnVar2, zzgln<zzcgz> zzglnVar3, zzgln<zzg> zzglnVar4, zzgln<zzdxk> zzglnVar5) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
        this.zzc = zzglnVar3;
        this.zzd = zzglnVar4;
        this.zze = zzglnVar5;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzczu(((zzfbv) this.zza).zza(), ((zzdat) this.zzb).zza(), ((zzcox) this.zzc).zza(), ((zzfbu) this.zzd).zzb(), this.zze.zzb());
    }
}
