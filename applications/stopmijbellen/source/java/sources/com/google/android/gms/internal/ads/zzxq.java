package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzxq.class */
public final class zzxq {
    public static final zzxq zza = new zzxq(0, 0);
    public final long zzb;
    public final long zzc;

    public zzxq(long j, long j2) {
        this.zzb = j;
        this.zzc = j2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzxq.class != obj.getClass()) {
            return false;
        }
        zzxq zzxqVar = (zzxq) obj;
        return this.zzb == zzxqVar.zzb && this.zzc == zzxqVar.zzc;
    }

    public final int hashCode() {
        return (((int) this.zzb) * 31) + ((int) this.zzc);
    }

    public final String toString() {
        long j = this.zzb;
        long j2 = this.zzc;
        StringBuilder sb = new StringBuilder(60);
        sb.append("[timeUs=");
        sb.append(j);
        sb.append(", position=");
        sb.append(j2);
        sb.append("]");
        return sb.toString();
    }
}
