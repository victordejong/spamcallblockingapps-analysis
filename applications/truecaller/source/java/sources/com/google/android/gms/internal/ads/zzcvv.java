package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcvv.class */
public final class zzcvv implements zzgla<Set<zzdih<zzdcq>>> {
    private final zzcvo zza;
    private final zzgln<zzcwy> zzb;

    public zzcvv(zzcvo zzcvoVar, zzgln<zzcwy> zzglnVar) {
        this.zza = zzcvoVar;
        this.zzb = zzglnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        Set<zzdih<zzdcq>> zzg = zzcvo.zzg(this.zzb.zzb());
        zzgli.zzb(zzg);
        return zzg;
    }
}
