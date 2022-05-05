package com.privacystar.core.util;

import android.app.KeyguardManager;
import android.content.Context;
import android.os.Build;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/LockScreenUtil.class */
public class LockScreenUtil {
    public static final String KEYGUARD_TAG = "PStarLock";
    private static KeyguardManager.KeyguardLock lock;

    public static void claimLock(Context context) {
        claimLock(context, false);
    }

    public static void claimLock(Context context, boolean z) {
        if ((Build.VERSION.SDK_INT < 13 || z) && lock == null) {
            KeyguardManager keyguardManager = (KeyguardManager) context.getSystemService("keyguard");
            if (keyguardManager.inKeyguardRestrictedInputMode()) {
                lock = keyguardManager.newKeyguardLock(KEYGUARD_TAG);
                lock.disableKeyguard();
            }
        }
    }

    public static void releaseLock() {
        releaseLock(false);
    }

    public static void releaseLock(boolean z) {
        if ((Build.VERSION.SDK_INT < 13 || z) && lock != null) {
            lock.reenableKeyguard();
            lock = null;
        }
    }
}
