package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaxl.class */
public final class zzaxl {
    public final long zza;
    public final String zzb;
    public final int zzc;

    public zzaxl(long j, String str, int i) {
        this.zza = j;
        this.zzb = str;
        this.zzc = i;
    }

    public final boolean equals(Object obj) {
        if (obj == null || !(obj instanceof zzaxl)) {
            return false;
        }
        zzaxl zzaxlVar = (zzaxl) obj;
        return zzaxlVar.zza == this.zza && zzaxlVar.zzc == this.zzc;
    }

    public final int hashCode() {
        return (int) this.zza;
    }
}
