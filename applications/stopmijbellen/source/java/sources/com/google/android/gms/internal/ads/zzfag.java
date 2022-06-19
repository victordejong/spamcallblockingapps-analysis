package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdav;
import com.google.android.gms.internal.ads.zzdea;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfag.class */
public final class zzfag<R extends zzdea<AdT>, AdT extends zzdav> implements zzfgh<R, AdT> {
    private final zzfbc<R, zzffw<R, AdT>> zza;

    public zzfag(zzfbc<R, zzffw<R, AdT>> zzfbcVar) {
        this.zza = zzfbcVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzfgh
    public final zzfxa<zzffw<R, AdT>> zza(zzfgi<R, AdT> zzfgiVar) {
        zzfah zzfahVar = (zzfah) zzfgiVar;
        zzfbc<R, zzffw<R, AdT>> zzfbcVar = this.zza;
        return ((zzfad) zzfbcVar).zzb(zzfahVar.zzb, zzfahVar.zza, null);
    }

    @Override // com.google.android.gms.internal.ads.zzfgh
    public final void zzb(zzffw<R, AdT> zzffwVar) {
        zzffwVar.zza = (R) ((zzfad) this.zza).zza();
    }
}
