package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdnd.class */
public final class zzdnd implements zzgpr<Set<zzdlw<zzdjm>>> {
    private final zzdna zza;
    private final zzgqe<zzddr> zzb;

    public zzdnd(zzdna zzdnaVar, zzgqe<zzddr> zzgqeVar) {
        this.zza = zzdnaVar;
        this.zzb = zzgqeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        Set singleton = Collections.singleton(new zzdlw(this.zzb.zzb(), zzcjm.zzf));
        zzgpz.zzb(singleton);
        return singleton;
    }
}
