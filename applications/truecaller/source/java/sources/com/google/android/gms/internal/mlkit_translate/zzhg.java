package com.google.android.gms.internal.mlkit_translate;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzhg.class */
public class zzhg {
    private final String zza;
    private final String zzb;
    private final String zzc;

    public zzhg(String str, String str2, String str3) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = str3;
    }

    public final String zza() {
        return this.zza;
    }

    public final String zzb() {
        return this.zzb;
    }

    public final String zzc() {
        String str = this.zza;
        String str2 = this.zzc;
        StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + String.valueOf(str).length() + 11);
        sb.append("1:");
        sb.append(str);
        sb.append(":android:");
        sb.append(str2);
        return sb.toString();
    }
}
