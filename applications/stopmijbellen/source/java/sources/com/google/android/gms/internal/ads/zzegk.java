package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzg;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzegk.class */
public final class zzegk implements zzgpr<zzegj> {
    private final zzgqe<zzegs> zza;
    private final zzgqe<zzg> zzb;

    public zzegk(zzgqe<zzegs> zzgqeVar, zzgqe<zzg> zzgqeVar2) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzegj(((zzegt) this.zza).zzb(), ((zzffg) this.zzb).zzb());
    }
}
