package com.google.android.gms.internal.consent_sdk;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/zzbz.class */
public final class zzbz {
    private final Context zza;
    private final Map<String, SharedPreferences.Editor> zzb = new HashMap();

    public zzbz(Context context) {
        this.zza = context;
    }

    public final SharedPreferences.Editor zzd(String str) {
        if (!this.zzb.containsKey(str)) {
            this.zzb.put(str, this.zza.getSharedPreferences(str, 0).edit());
        }
        return this.zzb.get(str);
    }

    public final void zzb() {
        for (SharedPreferences.Editor editor : this.zzb.values()) {
            editor.apply();
        }
    }

    public final boolean zzc(String str, Object obj) {
        zzby zza = zzca.zza(this.zza, str);
        if (zza == null) {
            return false;
        }
        SharedPreferences.Editor zzd = zzd(zza.zza);
        if (obj instanceof Integer) {
            zzd.putInt(zza.zzb, ((Integer) obj).intValue());
            return true;
        } else if (obj instanceof Long) {
            zzd.putLong(zza.zzb, ((Long) obj).longValue());
            return true;
        } else if (obj instanceof Double) {
            zzd.putFloat(zza.zzb, ((Double) obj).floatValue());
            return true;
        } else if (obj instanceof Float) {
            zzd.putFloat(zza.zzb, ((Float) obj).floatValue());
            return true;
        } else if (obj instanceof Boolean) {
            zzd.putBoolean(zza.zzb, ((Boolean) obj).booleanValue());
            return true;
        } else if (!(obj instanceof String)) {
            return false;
        } else {
            zzd.putString(zza.zzb, (String) obj);
            return true;
        }
    }
}
