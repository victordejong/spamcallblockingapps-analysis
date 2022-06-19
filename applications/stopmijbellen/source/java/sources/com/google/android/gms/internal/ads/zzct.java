package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzct.class */
public final class zzct {
    public static final zzct zza = new zzct(0, 0, 0, 1.0f);
    public static final zzj<zzct> zzb = zzcs.zza;
    public final int zzc;
    public final int zzd;
    public final int zze;
    public final float zzf;

    public zzct(int i, int i2, int i3, float f) {
        this.zzc = i;
        this.zzd = i2;
        this.zze = i3;
        this.zzf = f;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzct)) {
            return false;
        }
        zzct zzctVar = (zzct) obj;
        return this.zzc == zzctVar.zzc && this.zzd == zzctVar.zzd && this.zze == zzctVar.zze && this.zzf == zzctVar.zzf;
    }

    public final int hashCode() {
        int i = this.zzc;
        int i2 = this.zzd;
        return Float.floatToRawIntBits(this.zzf) + ((((((i + 217) * 31) + i2) * 31) + this.zze) * 31);
    }
}
