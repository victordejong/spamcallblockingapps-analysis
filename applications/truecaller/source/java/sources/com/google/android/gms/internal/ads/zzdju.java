package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdju.class */
public final class zzdju implements zzgla<Set<zzdih<zzdbc>>> {
    private final zzdjm zza;
    private final zzgln<zzdac> zzb;

    public zzdju(zzdjm zzdjmVar, zzgln<zzdac> zzglnVar) {
        this.zza = zzdjmVar;
        this.zzb = zzglnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        Set<zzdih<zzdbc>> zze = this.zza.zze(this.zzb.zzb());
        zzgli.zzb(zze);
        return zze;
    }
}
