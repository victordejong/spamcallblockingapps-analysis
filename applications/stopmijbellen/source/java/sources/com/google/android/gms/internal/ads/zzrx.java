package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzrx.class */
public final class zzrx {
    public final long zza;
    public final long zzb;

    public zzrx(long j, long j2) {
        this.zza = j;
        this.zzb = j2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzrx)) {
            return false;
        }
        zzrx zzrxVar = (zzrx) obj;
        return this.zza == zzrxVar.zza && this.zzb == zzrxVar.zzb;
    }

    public final int hashCode() {
        return (((int) this.zza) * 31) + ((int) this.zzb);
    }
}
