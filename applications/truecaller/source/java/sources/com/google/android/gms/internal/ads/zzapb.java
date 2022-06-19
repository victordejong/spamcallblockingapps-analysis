package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzapb.class */
public class zzapb {
    private int zza;

    public void zza() {
        this.zza = 0;
    }

    public final boolean zzb() {
        return zzg(Integer.MIN_VALUE);
    }

    public final boolean zzc() {
        return zzg(4);
    }

    public final boolean zzd() {
        return zzg(1);
    }

    public final void zze(int i) {
        this.zza = i;
    }

    public final void zzf(int i) {
        this.zza |= Integer.MIN_VALUE;
    }

    public final boolean zzg(int i) {
        return (this.zza & i) == i;
    }
}
