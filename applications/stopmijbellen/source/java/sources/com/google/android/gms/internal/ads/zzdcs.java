package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzb;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdcs.class */
public final class zzdcs implements zzgpr<zzb> {
    private final zzdcr zza;
    private final zzgqe<Context> zzb;
    private final zzgqe<zzcgf> zzc;

    public zzdcs(zzdcr zzdcrVar, zzgqe<Context> zzgqeVar, zzgqe<zzcgf> zzgqeVar2) {
        this.zza = zzdcrVar;
        this.zzb = zzgqeVar;
        this.zzc = zzgqeVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzb(this.zzb.zzb(), this.zzc.zzb(), null);
    }
}
