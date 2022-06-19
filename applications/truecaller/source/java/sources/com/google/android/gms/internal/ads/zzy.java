package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzy.class */
public final class zzy {
    public static final zzy zza = new zzy(0, 0, 0, 1.0f);
    public static final zzadw<zzy> zzf = zzx.zza;
    public final int zzb;
    public final int zzc;
    public final int zzd;
    public final float zze;

    public zzy(int i, int i2, int i3, float f) {
        this.zzb = i;
        this.zzc = i2;
        this.zzd = i3;
        this.zze = f;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzy)) {
            return false;
        }
        zzy zzyVar = (zzy) obj;
        return this.zzb == zzyVar.zzb && this.zzc == zzyVar.zzc && this.zzd == zzyVar.zzd && this.zze == zzyVar.zze;
    }

    public final int hashCode() {
        int i = this.zzb;
        int i2 = this.zzc;
        return Float.floatToRawIntBits(this.zze) + ((((((i + 217) * 31) + i2) * 31) + this.zzd) * 31);
    }
}
