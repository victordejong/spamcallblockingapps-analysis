package com.google.android.gms.common.d;

import android.content.Context;
import com.google.android.gms.common.util.n;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/d/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static Context f22791a;

    /* renamed from: b  reason: collision with root package name */
    private static Boolean f22792b;

    public static boolean a(Context context) {
        Boolean bool;
        synchronized (a.class) {
            try {
                Context applicationContext = context.getApplicationContext();
                Context context2 = f22791a;
                if (context2 != null && (bool = f22792b) != null && context2 == applicationContext) {
                    return bool.booleanValue();
                }
                f22792b = null;
                if (n.j()) {
                    f22792b = Boolean.valueOf(applicationContext.getPackageManager().isInstantApp());
                } else {
                    try {
                        context.getClassLoader().loadClass("com.google.android.instantapps.supervisor.InstantAppsRuntime");
                        f22792b = Boolean.TRUE;
                    } catch (ClassNotFoundException e) {
                        f22792b = Boolean.FALSE;
                    }
                }
                f22791a = applicationContext;
                return f22792b.booleanValue();
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
