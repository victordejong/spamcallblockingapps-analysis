package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgfl.class */
public final class zzgfl {
    private final Object zza;
    private final int zzb;

    public zzgfl(Object obj, int i) {
        this.zza = obj;
        this.zzb = i;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzgfl)) {
            return false;
        }
        zzgfl zzgflVar = (zzgfl) obj;
        return this.zza == zzgflVar.zza && this.zzb == zzgflVar.zzb;
    }

    public final int hashCode() {
        return (System.identityHashCode(this.zza) * 65535) + this.zzb;
    }
}
