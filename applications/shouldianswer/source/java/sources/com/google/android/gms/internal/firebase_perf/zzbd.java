package com.google.android.gms.internal.firebase_perf;

import android.content.Context;
import android.content.pm.PackageManager;
import android.util.Log;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzbd.class */
public final class zzbd {
    private static Boolean zzhv;

    public static int zza(byte[] bArr) {
        int i = 0;
        for (int i2 = 0; i2 < 4 && i2 < bArr.length; i2++) {
            i |= (bArr[i2] & 255) << (i2 << 3);
        }
        return i;
    }

    public static boolean zzg(Context context) {
        Boolean bool = zzhv;
        if (bool != null) {
            return bool.booleanValue();
        }
        try {
            Boolean valueOf = Boolean.valueOf(context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData.getBoolean("firebase_performance_logcat_enabled", false));
            zzhv = valueOf;
            return valueOf.booleanValue();
        } catch (PackageManager.NameNotFoundException | NullPointerException e) {
            String valueOf2 = String.valueOf(e.getMessage());
            Log.d("isEnabled", valueOf2.length() != 0 ? "No perf logcat meta data found ".concat(valueOf2) : new String("No perf logcat meta data found "));
            return false;
        }
    }
}
