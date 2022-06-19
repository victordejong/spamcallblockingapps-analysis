package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdlz.class */
public final class zzdlz implements zzgpr<zzdly> {
    private final zzgqe<Context> zza;
    private final zzgqe<Set<zzdlw<zzaya>>> zzb;
    private final zzgqe<zzfdn> zzc;

    public zzdlz(zzgqe<Context> zzgqeVar, zzgqe<Set<zzdlw<zzaya>>> zzgqeVar2, zzgqe<zzfdn> zzgqeVar3) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
        this.zzc = zzgqeVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzdly(this.zza.zzb(), ((zzgqc) this.zzb).zzb(), ((zzdbl) this.zzc).zza());
    }
}
