package com.google.android.gms.internal.icing;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Build;
import android.os.Process;
import android.os.UserManager;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.RequiresApi;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzaz.class */
public class zzaz {
    @GuardedBy

    /* renamed from: a */
    private static UserManager f7895a;

    /* renamed from: b */
    private static volatile boolean f7896b = !m14033d();

    private zzaz() {
    }

    /* renamed from: a */
    public static boolean m14036a(Context context) {
        return !m14033d() || m14034c(context);
    }

    @RequiresApi
    @TargetApi(24)
    @GuardedBy
    /* renamed from: b */
    private static boolean m14035b(Context context) {
        boolean z;
        int i = 1;
        while (true) {
            z = false;
            if (i > 2) {
                break;
            }
            if (f7895a == null) {
                f7895a = (UserManager) context.getSystemService(UserManager.class);
            }
            UserManager userManager = f7895a;
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
                Log.w("DirectBootUtils", "Failed to check if user is unlocked.", e);
                f7895a = null;
                i++;
            }
        }
        if (z) {
            f7895a = null;
        }
        return z;
    }

    @RequiresApi
    @TargetApi(24)
    /* renamed from: c */
    private static boolean m14034c(Context context) {
        if (f7896b) {
            return true;
        }
        synchronized (zzaz.class) {
            try {
                if (f7896b) {
                    return true;
                }
                boolean b = m14035b(context);
                if (b) {
                    f7896b = b;
                }
                return b;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: d */
    public static boolean m14033d() {
        return Build.VERSION.SDK_INT >= 24;
    }
}
