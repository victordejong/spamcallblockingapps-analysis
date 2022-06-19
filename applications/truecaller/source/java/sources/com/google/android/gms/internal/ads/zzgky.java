package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgky.class */
public final class zzgky<T> implements zzgla<T> {
    private zzgln<T> zza;

    public static <T> void zza(zzgln<T> zzglnVar, zzgln<T> zzglnVar2) {
        zzgky zzgkyVar = (zzgky) zzglnVar;
        if (zzgkyVar.zza == null) {
            zzgkyVar.zza = zzglnVar2;
            return;
        }
        throw new IllegalStateException();
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final T zzb() {
        zzgln<T> zzglnVar = this.zza;
        if (zzglnVar != null) {
            return zzglnVar.zzb();
        }
        throw new IllegalStateException();
    }
}
