package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.VideoController;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdsi.class */
public final class zzdsi implements zzgpr<zzdlw<VideoController.VideoLifecycleCallbacks>> {
    private final zzdsb zza;
    private final zzgqe<zzdvi> zzb;
    private final zzgqe<Executor> zzc;

    public zzdsi(zzdsb zzdsbVar, zzgqe<zzdvi> zzgqeVar, zzgqe<Executor> zzgqeVar2) {
        this.zza = zzdsbVar;
        this.zzb = zzgqeVar;
        this.zzc = zzgqeVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzdlw(((zzdvj) this.zzb).zzb(), this.zzc.zzb());
    }
}
