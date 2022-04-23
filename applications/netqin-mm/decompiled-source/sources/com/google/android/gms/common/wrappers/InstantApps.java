package com.google.android.gms.common.wrappers;

import android.content.Context;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.util.PlatformVersion;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/wrappers/InstantApps.class */
public class InstantApps {

    /* renamed from: a */
    public static Context f23578a;

    /* renamed from: b */
    public static Boolean f23579b;

    @KeepForSdk
    /* renamed from: a */
    public static boolean m17037a(Context context) {
        synchronized (InstantApps.class) {
            try {
                Context applicationContext = context.getApplicationContext();
                if (f23578a == null || f23579b == null || f23578a != applicationContext) {
                    f23579b = null;
                    if (PlatformVersion.m17057k()) {
                        f23579b = Boolean.valueOf(applicationContext.getPackageManager().isInstantApp());
                    } else {
                        try {
                            context.getClassLoader().loadClass("com.google.android.instantapps.supervisor.InstantAppsRuntime");
                            f23579b = true;
                        } catch (ClassNotFoundException e) {
                            f23579b = false;
                        }
                    }
                    f23578a = applicationContext;
                    return f23579b.booleanValue();
                }
                return f23579b.booleanValue();
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
