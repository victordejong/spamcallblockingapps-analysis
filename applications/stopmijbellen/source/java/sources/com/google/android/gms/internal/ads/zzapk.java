package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzapk.class */
public final class zzapk {
    public static final zzapk zza = new zzapk(1.0f, 1.0f);
    public final float zzb;
    public final float zzc = 1.0f;
    private final int zzd;

    public zzapk(float f, float f2) {
        this.zzb = f;
        this.zzd = Math.round(f * 1000.0f);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && zzapk.class == obj.getClass() && this.zzb == ((zzapk) obj).zzb;
    }

    public final int hashCode() {
        return Float.floatToRawIntBits(1.0f) + ((Float.floatToRawIntBits(this.zzb) + 527) * 31);
    }

    public final long zza(long j) {
        return j * this.zzd;
    }
}
