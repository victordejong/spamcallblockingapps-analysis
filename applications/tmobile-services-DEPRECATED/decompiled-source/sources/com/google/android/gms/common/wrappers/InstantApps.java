package com.google.android.gms.common.wrappers;

import android.content.Context;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.util.PlatformVersion;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/wrappers/InstantApps.class */
public class InstantApps {

    /* renamed from: a */
    private static Context f7664a;

    /* renamed from: b */
    private static Boolean f7665b;

    @KeepForSdk
    /* renamed from: a */
    public static boolean m14288a(Context context) {
        synchronized (InstantApps.class) {
            try {
                Context applicationContext = context.getApplicationContext();
                if (f7664a == null || f7665b == null || f7664a != applicationContext) {
                    f7665b = null;
                    if (PlatformVersion.m14314i()) {
                        f7665b = Boolean.valueOf(applicationContext.getPackageManager().isInstantApp());
                    } else {
                        try {
                            context.getClassLoader().loadClass("com.google.android.instantapps.supervisor.InstantAppsRuntime");
                            f7665b = Boolean.TRUE;
                        } catch (ClassNotFoundException e) {
                            f7665b = Boolean.FALSE;
                        }
                    }
                    f7664a = applicationContext;
                    return f7665b.booleanValue();
                }
                return f7665b.booleanValue();
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
