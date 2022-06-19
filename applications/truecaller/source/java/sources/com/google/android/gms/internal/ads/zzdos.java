package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.VideoController;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdos.class */
public final class zzdos implements zzgla<zzdih<VideoController.VideoLifecycleCallbacks>> {
    private final zzdol zza;
    private final zzgln<zzdrr> zzb;
    private final zzgln<Executor> zzc;

    public zzdos(zzdol zzdolVar, zzgln<zzdrr> zzglnVar, zzgln<Executor> zzglnVar2) {
        this.zza = zzdolVar;
        this.zzb = zzglnVar;
        this.zzc = zzglnVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzdih(((zzdrs) this.zzb).zzb(), this.zzc.zzb());
    }
}
