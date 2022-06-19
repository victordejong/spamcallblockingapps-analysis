package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzqx.class */
final class zzqx {
    public final int zza;
    public final boolean zzb;

    public zzqx(int i, boolean z) {
        this.zza = i;
        this.zzb = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzqx.class != obj.getClass()) {
            return false;
        }
        zzqx zzqxVar = (zzqx) obj;
        return this.zza == zzqxVar.zza && this.zzb == zzqxVar.zzb;
    }

    public final int hashCode() {
        return (this.zza * 31) + (this.zzb ? 1 : 0);
    }
}
