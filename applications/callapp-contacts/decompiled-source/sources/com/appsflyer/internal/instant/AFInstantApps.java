package com.appsflyer.internal.instant;

import android.content.Context;
import android.os.Build;
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/instant/AFInstantApps.class */
public class AFInstantApps {
    public static boolean isInstantApp(Context context) {
        if (Build.VERSION.SDK_INT >= 26) {
            return context.getPackageManager().isInstantApp();
        }
        try {
            context.getClassLoader().loadClass("com.google.android.instantapps.supervisor.InstantAppsRuntime");
            return true;
        } catch (ClassNotFoundException e) {
            return false;
        }
    }
}
