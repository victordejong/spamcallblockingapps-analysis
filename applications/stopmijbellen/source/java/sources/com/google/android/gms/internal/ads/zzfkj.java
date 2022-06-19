package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfkj.class */
public final class zzfkj {
    private final String zza;
    private final String zzb;

    private zzfkj(String str, String str2) {
        this.zza = str;
        this.zzb = str2;
    }

    public static zzfkj zza(String str, String str2) {
        zzfli.zza(str, "Name is null or empty");
        zzfli.zza(str2, "Version is null or empty");
        return new zzfkj(str, str2);
    }

    public final String zzb() {
        return this.zza;
    }

    public final String zzc() {
        return this.zzb;
    }
}
