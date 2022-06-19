package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.ViewGroup;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzepy.class */
public final class zzepy implements zzgpr<zzepw> {
    private final zzgqe<zzfxb> zza;
    private final zzgqe<Context> zzb;
    private final zzgqe<zzfef> zzc;
    private final zzgqe<ViewGroup> zzd;

    public zzepy(zzgqe<zzfxb> zzgqeVar, zzgqe<Context> zzgqeVar2, zzgqe<zzfef> zzgqeVar3, zzgqe<ViewGroup> zzgqeVar4) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
        this.zzc = zzgqeVar3;
        this.zzd = zzgqeVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzepw(this.zza.zzb(), ((zzffh) this.zzb).zza(), ((zzdei) this.zzc).zza(), ((zzcyu) this.zzd).zza());
    }
}
