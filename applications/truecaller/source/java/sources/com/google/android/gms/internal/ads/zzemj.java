package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.ViewGroup;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzemj.class */
public final class zzemj implements zzgla<zzemh> {
    private final zzgln<zzfsn> zza;
    private final zzgln<Context> zzb;
    private final zzgln<zzfar> zzc;
    private final zzgln<ViewGroup> zzd;

    public zzemj(zzgln<zzfsn> zzglnVar, zzgln<Context> zzglnVar2, zzgln<zzfar> zzglnVar3, zzgln<ViewGroup> zzglnVar4) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
        this.zzc = zzglnVar3;
        this.zzd = zzglnVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzemh(this.zza.zzb(), ((zzfbv) this.zzb).zza(), ((zzdat) this.zzc).zza(), ((zzcvf) this.zzd).zza());
    }
}
