package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdzr.class */
public final class zzdzr implements zzgpr<Set<zzdlw<zzdhm>>> {
    private final zzdzm zza;
    private final zzgqe<zzdzw> zzb;
    private final zzgqe<Executor> zzc;

    public zzdzr(zzdzm zzdzmVar, zzgqe<zzdzw> zzgqeVar, zzgqe<Executor> zzgqeVar2) {
        this.zza = zzdzmVar;
        this.zzb = zzgqeVar;
        this.zzc = zzgqeVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzdzw zzb = this.zzb.zzb();
        zzfxb zzfxbVar = zzcjm.zza;
        zzgpz.zzb(zzfxbVar);
        Set<zzdlw<zzdhm>> zze = zzdzm.zze(zzb, zzfxbVar);
        zzgpz.zzb(zze);
        return zze;
    }
}
