package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdqs.class */
public final class zzdqs implements zzgpr<zzcgq> {
    private final zzdqo zza;
    private final zzgqe<Context> zzb;
    private final zzgqe<zzfef> zzc;

    public zzdqs(zzdqo zzdqoVar, zzgqe<Context> zzgqeVar, zzgqe<zzfef> zzgqeVar2) {
        this.zza = zzdqoVar;
        this.zzb = zzgqeVar;
        this.zzc = zzgqeVar2;
    }

    /* renamed from: zza */
    public final zzcgq zzb() {
        return new zzcgq(((zzffh) this.zzb).zza(), ((zzdei) this.zzc).zza().zzf);
    }
}
