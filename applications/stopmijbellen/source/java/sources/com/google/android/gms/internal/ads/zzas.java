package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzas.class */
public final class zzas {
    public static final zzas zza = new zzas(new zzaq());
    public static final zzj<zzas> zzb = zzap.zza;
    public final long zzc;
    public final long zzd;
    public final long zze;
    public final float zzf;
    public final float zzg;

    /* JADX INFO: Access modifiers changed from: private */
    public zzas(zzaq zzaqVar) {
        this.zzc = -9223372036854775807L;
        this.zzd = -9223372036854775807L;
        this.zze = -9223372036854775807L;
        this.zzf = -3.4028235E38f;
        this.zzg = -3.4028235E38f;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzas)) {
            return false;
        }
        long j = ((zzas) obj).zzc;
        return true;
    }

    public final int hashCode() {
        int i = (int) (-9223372034707292159L);
        return Float.floatToIntBits(-3.4028235E38f) + ((Float.floatToIntBits(-3.4028235E38f) + (((((i * 31) + i) * 31) + i) * 31)) * 31);
    }
}
