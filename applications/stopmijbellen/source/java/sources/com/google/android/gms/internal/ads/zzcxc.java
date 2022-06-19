package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcxc.class */
public final class zzcxc implements zzgpr<zzcxb> {
    private final zzgqe<Context> zza;
    private final zzgqe<zzaxw> zzb;

    public zzcxc(zzgqe<Context> zzgqeVar, zzgqe<zzaxw> zzgqeVar2) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzcxb(((zzffh) this.zza).zza(), this.zzb.zzb());
    }
}
