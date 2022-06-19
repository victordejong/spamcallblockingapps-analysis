package com.google.android.gms.internal.mlkit_language_id;

import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_language_id/zzf.class */
public final class zzf {
    private final String zza;
    private final zze zzb;
    private zze zzc;
    private boolean zzd;

    /* JADX INFO: Access modifiers changed from: private */
    public zzf(String str) {
        zze zzeVar = new zze();
        this.zzb = zzeVar;
        this.zzc = zzeVar;
        this.zzd = false;
        this.zza = (String) zzg.zza(str);
    }

    private final zzf zzb(String str, Object obj) {
        zze zzeVar = new zze();
        this.zzc.zzc = zzeVar;
        this.zzc = zzeVar;
        zzeVar.zzb = obj;
        zzeVar.zza = (String) zzg.zza(str);
        return this;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(32);
        sb.append(this.zza);
        sb.append('{');
        zze zzeVar = this.zzb.zzc;
        String str = "";
        while (true) {
            String str2 = str;
            if (zzeVar == null) {
                sb.append('}');
                return sb.toString();
            }
            Object obj = zzeVar.zzb;
            sb.append(str2);
            String str3 = zzeVar.zza;
            if (str3 != null) {
                sb.append(str3);
                sb.append('=');
            }
            if (obj == null || !obj.getClass().isArray()) {
                sb.append(obj);
            } else {
                String deepToString = Arrays.deepToString(new Object[]{obj});
                sb.append((CharSequence) deepToString, 1, deepToString.length() - 1);
            }
            zzeVar = zzeVar.zzc;
            str = ", ";
        }
    }

    public final zzf zza(String str, float f) {
        return zzb(str, String.valueOf(f));
    }

    public final zzf zza(String str, Object obj) {
        return zzb(str, obj);
    }
}
