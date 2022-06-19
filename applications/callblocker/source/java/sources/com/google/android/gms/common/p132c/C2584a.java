package com.google.android.gms.common.p132c;

import android.content.Context;
import com.google.android.gms.common.util.C2716m;
/* renamed from: com.google.android.gms.common.c.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/c/a.class */
public class C2584a {

    /* renamed from: a */
    private static Context f7241a;

    /* renamed from: b */
    private static Boolean f7242b;

    /* renamed from: a */
    public static boolean m14203a(Context context) {
        boolean booleanValue;
        synchronized (C2584a.class) {
            try {
                Context applicationContext = context.getApplicationContext();
                if (f7241a == null || f7242b == null || f7241a != applicationContext) {
                    f7242b = null;
                    if (C2716m.m13832k()) {
                        f7242b = Boolean.valueOf(applicationContext.getPackageManager().isInstantApp());
                    } else {
                        try {
                            context.getClassLoader().loadClass("com.google.android.instantapps.supervisor.InstantAppsRuntime");
                            f7242b = true;
                        } catch (ClassNotFoundException e) {
                            f7242b = false;
                        }
                    }
                    f7241a = applicationContext;
                    booleanValue = f7242b.booleanValue();
                } else {
                    booleanValue = f7242b.booleanValue();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return booleanValue;
    }
}
