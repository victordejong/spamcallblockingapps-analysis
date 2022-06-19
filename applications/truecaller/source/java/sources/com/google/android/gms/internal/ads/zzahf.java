package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzahf.class */
public final class zzahf {
    public static final zzahf zza = new zzahf(1.0f, 1.0f);
    public static final zzadw<zzahf> zzd = zzahe.zza;
    public final float zzb;
    public final float zzc;
    private final int zze;

    public zzahf(float f, float f2) {
        zzakt.zza(f > 0.0f);
        zzakt.zza(f2 > 0.0f);
        this.zzb = f;
        this.zzc = f2;
        this.zze = Math.round(f * 1000.0f);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzahf.class != obj.getClass()) {
            return false;
        }
        zzahf zzahfVar = (zzahf) obj;
        return this.zzb == zzahfVar.zzb && this.zzc == zzahfVar.zzc;
    }

    public final int hashCode() {
        return Float.floatToRawIntBits(this.zzc) + ((Float.floatToRawIntBits(this.zzb) + 527) * 31);
    }

    public final String toString() {
        return zzamq.zzv("PlaybackParameters(speed=%.2f, pitch=%.2f)", Float.valueOf(this.zzb), Float.valueOf(this.zzc));
    }

    public final long zza(long j) {
        return j * this.zze;
    }
}
