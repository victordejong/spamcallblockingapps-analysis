package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbcy.class */
public final class zzbcy implements zzbdl {
    @Override // com.google.android.gms.internal.ads.zzbdl
    public final zzbdd zza(zzbbo zzbboVar, int i, String str, zzbbl zzbblVar) {
        if (i > 0) {
            int zzack = zzbck.zzack();
            return zzack < zzbblVar.zzelm ? new zzbds(zzbboVar, zzbblVar) : zzack < zzbblVar.zzelg ? new zzbdp(zzbboVar, zzbblVar) : new zzbdn(zzbboVar);
        }
        return new zzbdo(zzbboVar);
    }
}
