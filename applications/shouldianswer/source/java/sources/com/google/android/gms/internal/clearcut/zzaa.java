package com.google.android.gms.internal.clearcut;

import android.content.Context;
import android.os.Build;
import android.os.UserManager;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzaa.class */
public class zzaa {
    private static volatile UserManager zzdc;
    private static volatile boolean zzdd = !zzf();

    private zzaa() {
    }

    public static boolean zze(Context context) {
        return zzf() && !zzf(context);
    }

    private static boolean zzf() {
        return Build.VERSION.SDK_INT >= 24;
    }

    private static boolean zzf(Context context) {
        boolean z = zzdd;
        boolean z2 = z;
        if (!z) {
            UserManager userManager = zzdc;
            UserManager userManager2 = userManager;
            if (userManager == null) {
                synchronized (zzaa.class) {
                    try {
                        UserManager userManager3 = zzdc;
                        userManager2 = userManager3;
                        if (userManager3 == null) {
                            userManager2 = (UserManager) context.getSystemService(UserManager.class);
                            zzdc = userManager2;
                            if (userManager2 == null) {
                                zzdd = true;
                                return true;
                            }
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            boolean isUserUnlocked = userManager2.isUserUnlocked();
            zzdd = isUserUnlocked;
            z2 = isUserUnlocked;
            if (isUserUnlocked) {
                zzdc = null;
                z2 = isUserUnlocked;
            }
        }
        return z2;
    }
}
