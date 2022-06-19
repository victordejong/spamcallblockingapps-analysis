package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.HashSet;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdpk.class */
public final class zzdpk implements zzgpr<zzdly> {
    private final zzgqe<Context> zza;
    private final zzgqe<zzfdn> zzb;

    public zzdpk(zzgqe<Context> zzgqeVar, zzgqe<zzfdn> zzgqeVar2) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzdly(this.zza.zzb(), new HashSet(), ((zzdbl) this.zzb).zza());
    }
}
