package com.google.android.gms.common.p272k;

import android.content.Context;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.util.C6237o;
/* renamed from: com.google.android.gms.common.k.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/k/a.class */
public class C6196a {

    /* renamed from: a */
    private static Context f19638a;

    /* renamed from: b */
    private static Boolean f19639b;

    /* renamed from: a */
    public static boolean m16894a(@RecentlyNonNull Context context) {
        Boolean bool;
        synchronized (C6196a.class) {
            try {
                Context applicationContext = context.getApplicationContext();
                Context context2 = f19638a;
                if (context2 != null && (bool = f19639b) != null && context2 == applicationContext) {
                    return bool.booleanValue();
                }
                f19639b = null;
                if (C6237o.m16773k()) {
                    f19639b = Boolean.valueOf(applicationContext.getPackageManager().isInstantApp());
                } else {
                    try {
                        context.getClassLoader().loadClass("com.google.android.instantapps.supervisor.InstantAppsRuntime");
                        f19639b = Boolean.TRUE;
                    } catch (ClassNotFoundException e) {
                        f19639b = Boolean.FALSE;
                    }
                }
                f19638a = applicationContext;
                return f19639b.booleanValue();
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
