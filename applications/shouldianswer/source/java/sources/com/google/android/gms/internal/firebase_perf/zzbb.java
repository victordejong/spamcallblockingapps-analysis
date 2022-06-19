package com.google.android.gms.internal.firebase_perf;

import android.content.Context;
import android.content.res.Resources;
import android.util.Log;
import java.net.URI;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzbb.class */
public final class zzbb {
    private static String[] zzho;

    public static boolean zza(URI uri, Context context) {
        String[] strArr;
        Resources resources = context.getResources();
        int identifier = resources.getIdentifier("firebase_performance_whitelisted_domains", "array", context.getPackageName());
        if (identifier > 0) {
            Log.i("FirebasePerformance", "Detected domain whitelist, only whitelisted domains will be measured.");
            if (zzho == null) {
                zzho = resources.getStringArray(identifier);
            }
            for (String str : zzho) {
                String host = uri.getHost();
                if (host == null || host.contains(str)) {
                    return true;
                }
            }
            return false;
        }
        return true;
    }
}
