package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbn.class */
public final class zzbn {
    public static final zzbn zza = new zzbn(1.0f, 1.0f);
    public static final zzj<zzbn> zzb = zzbm.zza;
    public final float zzc;
    public final float zzd;
    private final int zze;

    public zzbn(float f, float f2) {
        zzdy.zzd(f > 0.0f);
        zzdy.zzd(f2 > 0.0f);
        this.zzc = f;
        this.zzd = f2;
        this.zze = Math.round(f * 1000.0f);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzbn.class != obj.getClass()) {
            return false;
        }
        zzbn zzbnVar = (zzbn) obj;
        return this.zzc == zzbnVar.zzc && this.zzd == zzbnVar.zzd;
    }

    public final int hashCode() {
        return Float.floatToRawIntBits(this.zzd) + ((Float.floatToRawIntBits(this.zzc) + 527) * 31);
    }

    public final String toString() {
        return zzfn.zzD("PlaybackParameters(speed=%.2f, pitch=%.2f)", Float.valueOf(this.zzc), Float.valueOf(this.zzd));
    }

    public final long zza(long j) {
        return j * this.zze;
    }
}
