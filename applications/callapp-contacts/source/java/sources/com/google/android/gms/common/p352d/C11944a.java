package com.google.android.gms.common.p352d;

import android.content.Context;
import com.google.android.gms.common.util.C12110n;
/* renamed from: com.google.android.gms.common.d.a */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/d/a.class */
public final class C11944a {

    /* renamed from: a */
    private static Context f39430a;

    /* renamed from: b */
    private static Boolean f39431b;

    /* renamed from: a */
    public static boolean m19266a(Context context) {
        Boolean bool;
        synchronized (C11944a.class) {
            try {
                Context applicationContext = context.getApplicationContext();
                Context context2 = f39430a;
                if (context2 != null && (bool = f39431b) != null && context2 == applicationContext) {
                    return bool.booleanValue();
                }
                f39431b = null;
                if (C12110n.m19012j()) {
                    f39431b = Boolean.valueOf(applicationContext.getPackageManager().isInstantApp());
                } else {
                    try {
                        context.getClassLoader().loadClass("com.google.android.instantapps.supervisor.InstantAppsRuntime");
                        f39431b = Boolean.TRUE;
                    } catch (ClassNotFoundException e) {
                        f39431b = Boolean.FALSE;
                    }
                }
                f39430a = applicationContext;
                return f39431b.booleanValue();
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
