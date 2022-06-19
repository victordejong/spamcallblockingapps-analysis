package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdhb.class */
public final class zzdhb implements zzgpr<zzdha> {
    private final zzgqe<Set<zzdlw<zzdhc>>> zza;
    private final zzgqe<zzfdn> zzb;

    public zzdhb(zzgqe<Set<zzdlw<zzdhc>>> zzgqeVar, zzgqe<zzfdn> zzgqeVar2) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzdha(((zzgqc) this.zza).zzb(), ((zzdbl) this.zzb).zza());
    }
}
