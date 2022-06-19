package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzazi.class */
public final class zzazi {
    public final long zza;
    public final String zzb;
    public final int zzc;

    public zzazi(long j, String str, int i) {
        this.zza = j;
        this.zzb = str;
        this.zzc = i;
    }

    public final boolean equals(Object obj) {
        if (obj == null || !(obj instanceof zzazi)) {
            return false;
        }
        zzazi zzaziVar = (zzazi) obj;
        return zzaziVar.zza == this.zza && zzaziVar.zzc == this.zzc;
    }

    public final int hashCode() {
        return (int) this.zza;
    }
}
