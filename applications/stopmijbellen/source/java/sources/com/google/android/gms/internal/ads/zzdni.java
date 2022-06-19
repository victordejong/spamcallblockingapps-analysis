package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdni.class */
public final class zzdni implements zzgpr<Set<zzdlw<zzder>>> {
    private final zzdna zza;
    private final zzgqe<zzddr> zzb;

    public zzdni(zzdna zzdnaVar, zzgqe<zzddr> zzgqeVar) {
        this.zza = zzdnaVar;
        this.zzb = zzgqeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        Set<zzdlw<zzder>> zzf = this.zza.zzf(this.zzb.zzb());
        zzgpz.zzb(zzf);
        return zzf;
    }
}
