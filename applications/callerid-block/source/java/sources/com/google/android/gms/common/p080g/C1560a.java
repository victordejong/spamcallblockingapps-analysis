package com.google.android.gms.common.p080g;

import android.content.Context;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.util.C1617n;
/* renamed from: com.google.android.gms.common.g.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/g/a.class */
public class C1560a {

    /* renamed from: a */
    private static Context f5820a;

    /* renamed from: b */
    private static Boolean f5821b;

    /* renamed from: a */
    public static boolean m8436a(@RecentlyNonNull Context context) {
        Boolean bool;
        Boolean bool2;
        synchronized (C1560a.class) {
            try {
                Context applicationContext = context.getApplicationContext();
                Context context2 = f5820a;
                if (context2 != null && (bool2 = f5821b) != null && context2 == applicationContext) {
                    return bool2.booleanValue();
                }
                f5821b = null;
                if (!C1617n.m8207k()) {
                    try {
                        context.getClassLoader().loadClass("com.google.android.instantapps.supervisor.InstantAppsRuntime");
                        f5821b = Boolean.TRUE;
                    } catch (ClassNotFoundException e) {
                        bool = Boolean.FALSE;
                    }
                    f5820a = applicationContext;
                    return f5821b.booleanValue();
                }
                bool = Boolean.valueOf(applicationContext.getPackageManager().isInstantApp());
                f5821b = bool;
                f5820a = applicationContext;
                return f5821b.booleanValue();
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
