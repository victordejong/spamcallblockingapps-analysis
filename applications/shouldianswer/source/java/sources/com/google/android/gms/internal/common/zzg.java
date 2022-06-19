package com.google.android.gms.internal.common;

import android.content.Context;
import android.os.Build;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/common/zzg.class */
public final class zzg {
    private static volatile boolean zziy = !zzam();

    public static Context getDeviceProtectedStorageContext(Context context) {
        return context.isDeviceProtectedStorage() ? context : context.createDeviceProtectedStorageContext();
    }

    public static boolean zzam() {
        return Build.VERSION.SDK_INT >= 24;
    }
}
