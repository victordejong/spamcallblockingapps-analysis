package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzg;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzedc.class */
public final class zzedc implements zzgla<zzedb> {
    private final zzgln<Context> zza;
    private final zzgln<zzdai> zzb;
    private final zzgln<zzecu> zzc;
    private final zzgln<zzecq> zzd;
    private final zzgln<zzg> zze;

    public zzedc(zzgln<Context> zzglnVar, zzgln<zzdai> zzglnVar2, zzgln<zzecu> zzglnVar3, zzgln<zzecq> zzglnVar4, zzgln<zzg> zzglnVar5) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
        this.zzc = zzglnVar3;
        this.zzd = zzglnVar4;
        this.zze = zzglnVar5;
    }

    /* renamed from: zza */
    public final zzedb zzb() {
        return new zzedb(((zzfbv) this.zza).zza(), ((zzdaj) this.zzb).zzb(), this.zzc.zzb(), ((zzecr) this.zzd).zzb(), ((zzfbu) this.zze).zzb());
    }
}
