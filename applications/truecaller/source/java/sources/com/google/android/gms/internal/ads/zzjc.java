package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzjc.class */
public final class zzjc {
    public final long zza;
    public final long zzb;

    public zzjc(long j, long j2) {
        this.zza = j;
        this.zzb = j2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzjc)) {
            return false;
        }
        zzjc zzjcVar = (zzjc) obj;
        return this.zza == zzjcVar.zza && this.zzb == zzjcVar.zzb;
    }

    public final int hashCode() {
        return (((int) this.zza) * 31) + ((int) this.zzb);
    }
}
