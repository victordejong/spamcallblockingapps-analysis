package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzcxg;
import com.google.android.gms.internal.ads.zzdal;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzews.class */
public final class zzews<R extends zzdal<AdT>, AdT extends zzcxg> implements zzfcw<R, AdT> {
    private final zzexo<R, zzfcl<R, AdT>> zza;

    public zzews(zzexo<R, zzfcl<R, AdT>> zzexoVar) {
        this.zza = zzexoVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzfcw
    public final zzfsm<zzfcl<R, AdT>> zza(zzfcx<R, AdT> zzfcxVar) {
        zzewt zzewtVar = (zzewt) zzfcxVar;
        zzexo<R, zzfcl<R, AdT>> zzexoVar = this.zza;
        return ((zzewp) zzexoVar).zzb(zzewtVar.zzb, zzewtVar.zza, null);
    }

    @Override // com.google.android.gms.internal.ads.zzfcw
    public final void zzb(zzfcl<R, AdT> zzfclVar) {
        zzfclVar.zza = (R) ((zzewp) this.zza).zza();
    }
}
