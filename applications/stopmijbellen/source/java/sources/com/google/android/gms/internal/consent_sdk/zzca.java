package com.google.android.gms.internal.consent_sdk;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/zzca.class */
public final class zzca {
    public static zzby zza(Context context, String str) {
        String str2;
        String str3;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String[] split = str.split("/", -1);
        int length = split.length;
        if (length == 1) {
            str3 = String.valueOf(context.getPackageName()).concat("_preferences");
            str2 = split[0];
        } else if (length != 2) {
            return null;
        } else {
            str3 = split[0];
            str2 = split[1];
        }
        if (!TextUtils.isEmpty(str3) && !TextUtils.isEmpty(str2)) {
            return new zzby(str3, str2);
        }
        return null;
    }

    public static void zzb(Context context, Set<String> set) {
        SharedPreferences.Editor zzd;
        zzbz zzbzVar = new zzbz(context);
        for (String str : set) {
            zzby zza = zza(context, str);
            if (zza == null) {
                String valueOf = String.valueOf(str);
                if (valueOf.length() != 0) {
                    "clearKeys: unable to process key: ".concat(valueOf);
                }
            } else {
                zzd = zzbzVar.zzd(zza.zza);
                zzd.remove(zza.zzb);
            }
        }
        zzbzVar.zzb();
    }
}
