package com.google.android.gms.internal.vision;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/vision/zzl.class */
public final class zzl {
    public static boolean zza(Context context, String str, String str2) {
        String zzk = zzcv.zzk(str2);
        if (!"face".equals(str) && !"ica".equals(str) && !"ocr".equals(str) && !"barcode".equals(str)) {
            String.format("Unrecognized engine: %s", str);
            return false;
        }
        int lastIndexOf = zzk.lastIndexOf(".so");
        String str3 = zzk;
        if (lastIndexOf == zzk.length() - 3) {
            str3 = zzk.substring(0, lastIndexOf);
        }
        String str4 = str3;
        if (str3.indexOf("lib") == 0) {
            str4 = str3.substring(3);
        }
        boolean zza = zzm.zza(str, str4);
        if (!zza) {
            String.format("%s engine not loaded with %s.", str, str4);
        }
        return zza;
    }
}
