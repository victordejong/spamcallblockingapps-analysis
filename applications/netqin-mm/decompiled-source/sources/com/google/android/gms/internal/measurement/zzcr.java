package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.os.Build;
import android.os.Process;
import android.os.UserManager;
import android.util.Log;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzcr.class */
public class zzcr {

    /* renamed from: a */
    public static UserManager f29442a;

    /* renamed from: b */
    public static volatile boolean f29443b = !m9864a();

    /* renamed from: a */
    public static boolean m9864a() {
        return Build.VERSION.SDK_INT >= 24;
    }

    /* renamed from: a */
    public static boolean m9863a(Context context) {
        return !m9864a() || m9861c(context);
    }

    /* renamed from: b */
    public static boolean m9862b(Context context) {
        boolean z;
        int i = 1;
        while (true) {
            z = false;
            if (i > 2) {
                break;
            }
            if (f29442a == null) {
                f29442a = (UserManager) context.getSystemService(UserManager.class);
            }
            UserManager userManager = f29442a;
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
                f29442a = null;
                i++;
            }
        }
        if (z) {
            f29442a = null;
        }
        return z;
    }

    /* renamed from: c */
    public static boolean m9861c(Context context) {
        if (f29443b) {
            return true;
        }
        synchronized (zzcr.class) {
            try {
                if (f29443b) {
                    return true;
                }
                boolean b = m9862b(context);
                if (b) {
                    f29443b = b;
                }
                return b;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
