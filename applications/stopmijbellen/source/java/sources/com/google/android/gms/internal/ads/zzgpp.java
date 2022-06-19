package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgpp.class */
public final class zzgpp<T> implements zzgpr<T> {
    private zzgqe<T> zza;

    public static <T> void zza(zzgqe<T> zzgqeVar, zzgqe<T> zzgqeVar2) {
        zzgpp zzgppVar = (zzgpp) zzgqeVar;
        if (zzgppVar.zza == null) {
            zzgppVar.zza = zzgqeVar2;
            return;
        }
        throw new IllegalStateException();
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final T zzb() {
        zzgqe<T> zzgqeVar = this.zza;
        if (zzgqeVar != null) {
            return zzgqeVar.zzb();
        }
        throw new IllegalStateException();
    }
}
