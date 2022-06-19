package com.google.android.gms.common.wrappers;

import android.content.Context;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.util.PlatformVersion;
@KeepForSdk
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/wrappers/InstantApps.class */
public class InstantApps {

    /* renamed from: a */
    public static Context f6149a;

    /* renamed from: b */
    public static Boolean f6150b;

    @KeepForSdk
    /* renamed from: a */
    public static boolean m38769a(Context context) {
        Boolean bool;
        synchronized (InstantApps.class) {
            try {
                Context applicationContext = context.getApplicationContext();
                Context context2 = f6149a;
                if (context2 != null && (bool = f6150b) != null && context2 == applicationContext) {
                    return bool.booleanValue();
                }
                f6150b = null;
                if (PlatformVersion.m38776a()) {
                    f6150b = Boolean.valueOf(applicationContext.getPackageManager().isInstantApp());
                } else {
                    try {
                        context.getClassLoader().loadClass("com.google.android.instantapps.supervisor.InstantAppsRuntime");
                        f6150b = Boolean.TRUE;
                    } catch (ClassNotFoundException e) {
                        f6150b = Boolean.FALSE;
                    }
                }
                f6149a = applicationContext;
                return f6150b.booleanValue();
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
