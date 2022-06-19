package com.appsflyer.internal;

import android.content.Context;
import android.os.Build;
/* renamed from: com.appsflyer.internal.bt */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/bt.class */
public final class C0782bt {
    public static boolean values(Context context) {
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
