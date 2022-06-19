package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzo;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdda.class */
public final class zzdda implements zzgpr<zzdlw<zzo>> {
    private final zzgqe<zzdjb> zza;
    private final zzgqe<Executor> zzb;

    public zzdda(zzgqe<zzdjb> zzgqeVar, zzgqe<Executor> zzgqeVar2) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzdlw(this.zza.zzb(), this.zzb.zzb());
    }
}
