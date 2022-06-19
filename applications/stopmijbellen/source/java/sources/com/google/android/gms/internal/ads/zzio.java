package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzio.class */
public final class zzio {
    public static final zzio zza;
    public static final zzio zzb = new zzio(Long.MAX_VALUE, Long.MAX_VALUE);
    public static final zzio zzc = new zzio(Long.MAX_VALUE, 0);
    public static final zzio zzd = new zzio(0, Long.MAX_VALUE);
    public static final zzio zze;
    public final long zzf;
    public final long zzg;

    static {
        zzio zzioVar = new zzio(0L, 0L);
        zza = zzioVar;
        zze = zzioVar;
    }

    public zzio(long j, long j2) {
        zzdy.zzd(j >= 0);
        zzdy.zzd(j2 >= 0);
        this.zzf = j;
        this.zzg = j2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzio.class != obj.getClass()) {
            return false;
        }
        zzio zzioVar = (zzio) obj;
        return this.zzf == zzioVar.zzf && this.zzg == zzioVar.zzg;
    }

    public final int hashCode() {
        return (((int) this.zzf) * 31) + ((int) this.zzg);
    }
}
