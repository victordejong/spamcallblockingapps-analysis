package com.google.android.gms.internal.mlkit_translate;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzhp.class */
public final class zzhp {
    private final zzhc zza;
    private final String zzb;
    private final String zzc;
    private final long zzd;

    public zzhp(zzhc zzhcVar, String str, String str2, long j) {
        this.zza = zzhcVar;
        this.zzb = str;
        this.zzc = str2;
        this.zzd = j;
    }

    public final zzhc zza() {
        return this.zza;
    }

    public final String zzb() {
        return this.zzb;
    }

    public final String zzc() {
        return this.zzc;
    }

    public final long zzd() {
        return this.zzd;
    }

    public final boolean zze() {
        return System.currentTimeMillis() >= this.zzd;
    }
}
