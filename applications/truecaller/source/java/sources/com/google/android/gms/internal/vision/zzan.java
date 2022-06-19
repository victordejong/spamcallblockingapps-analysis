package com.google.android.gms.internal.vision;

import android.content.Context;
import android.os.Build;
import android.os.Process;
import android.os.UserManager;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/vision/zzan.class */
public class zzan {
    private static UserManager zzff;
    private static volatile boolean zzfg = !zzs();
    private static boolean zzfh = false;

    private zzan() {
    }

    public static boolean isUserUnlocked(Context context) {
        return !zzs() || zzd(context);
    }

    private static boolean zzc(Context context) {
        boolean z;
        int i = 1;
        while (true) {
            z = false;
            if (i > 2) {
                break;
            }
            if (zzff == null) {
                zzff = (UserManager) context.getSystemService(UserManager.class);
            }
            UserManager userManager = zzff;
            if (userManager == null) {
                return true;
            }
            z = true;
            try {
                if (userManager.isUserUnlocked()) {
                    break;
                }
                z = !userManager.isUserRunning(Process.myUserHandle());
            } catch (NullPointerException e) {
                zzff = null;
                i++;
            }
        }
        if (z) {
            zzff = null;
        }
        return z;
    }

    private static boolean zzd(Context context) {
        if (zzfg) {
            return true;
        }
        synchronized (zzan.class) {
            try {
                if (zzfg) {
                    return true;
                }
                boolean zzc = zzc(context);
                if (zzc) {
                    zzfg = zzc;
                }
                return zzc;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static boolean zzs() {
        return Build.VERSION.SDK_INT >= 24;
    }
}
