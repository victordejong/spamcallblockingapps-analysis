package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbml.class */
public class zzbml<T> {
    private final String zza;
    private final T zzb;
    private final int zzc;

    public zzbml(String str, T t, int i) {
        this.zza = str;
        this.zzb = t;
        this.zzc = i;
    }

    public static zzbml<Double> zza(String str, double d) {
        return new zzbml<>(str, Double.valueOf(d), 3);
    }

    public static zzbml<Long> zzb(String str, long j) {
        return new zzbml<>(str, Long.valueOf(j), 2);
    }

    public static zzbml<String> zzc(String str, String str2) {
        return new zzbml<>(str, str2, 4);
    }

    public static zzbml<Boolean> zzd(String str, boolean z) {
        return new zzbml<>(str, Boolean.valueOf(z), 1);
    }

    public final T zze() {
        zzbnl zza = zzbnn.zza();
        if (zza != null) {
            int i = this.zzc - 1;
            return i != 0 ? i != 1 ? i != 2 ? (T) zza.zzd(this.zza, (String) this.zzb) : (T) zza.zzb(this.zza, ((Double) this.zzb).doubleValue()) : (T) zza.zzc(this.zza, ((Long) this.zzb).longValue()) : (T) zza.zza(this.zza, ((Boolean) this.zzb).booleanValue());
        }
        if (zzbnn.zzb() != null) {
            zzbnn.zzb().zza();
        }
        return this.zzb;
    }
}
