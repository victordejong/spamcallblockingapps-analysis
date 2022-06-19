package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzie.class */
public final class zzie {
    public final int zza;
    public final boolean zzb;

    public zzie(int i, boolean z) {
        this.zza = i;
        this.zzb = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzie.class != obj.getClass()) {
            return false;
        }
        zzie zzieVar = (zzie) obj;
        return this.zza == zzieVar.zza && this.zzb == zzieVar.zzb;
    }

    public final int hashCode() {
        return (this.zza * 31) + (this.zzb ? 1 : 0);
    }
}
