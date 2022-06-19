package com.google.android.gms.ads.internal.util;

import android.util.Log;
import com.google.ads.AdRequest;
import com.google.android.gms.internal.ads.zzadl;
import com.google.android.gms.internal.ads.zzazk;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/zzd.class */
public final class zzd extends zzazk {
    public static void zza(String str, Throwable th) {
        if (zzyg()) {
            Log.v(AdRequest.LOGTAG, str, th);
        }
    }

    public static void zzeb(String str) {
        if (zzyg()) {
            Log.v(AdRequest.LOGTAG, str);
        }
    }

    public static boolean zzyg() {
        return isLoggable(2) && zzadl.zzdee.get().booleanValue();
    }
}
