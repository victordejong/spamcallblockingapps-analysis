package com.google.android.gms.analytics.internal;

import android.os.Build;
import java.io.File;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/internal/zzx.class */
public class zzx {
    public static int version() {
        int i;
        try {
            i = Integer.parseInt(Build.VERSION.SDK);
        } catch (NumberFormatException e) {
            zzae.zzf("Invalid version number", Build.VERSION.SDK);
            i = 0;
        }
        return i;
    }

    public static boolean zzbR(String str) {
        boolean z = false;
        if (version() >= 9) {
            File file = new File(str);
            file.setReadable(false, false);
            file.setWritable(false, false);
            file.setReadable(true, true);
            file.setWritable(true, true);
            z = true;
        }
        return z;
    }
}
