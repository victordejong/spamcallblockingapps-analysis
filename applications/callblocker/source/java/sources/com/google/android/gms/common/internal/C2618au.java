package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.common.p132c.C2586c;
import javax.annotation.concurrent.GuardedBy;
/* renamed from: com.google.android.gms.common.internal.au */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/au.class */
public final class C2618au {

    /* renamed from: a */
    private static Object f7312a = new Object();
    @GuardedBy("sLock")

    /* renamed from: b */
    private static boolean f7313b;

    /* renamed from: c */
    private static String f7314c;

    /* renamed from: d */
    private static int f7315d;

    /* renamed from: a */
    public static String m14114a(Context context) {
        m14112c(context);
        return f7314c;
    }

    /* renamed from: b */
    public static int m14113b(Context context) {
        m14112c(context);
        return f7315d;
    }

    /* renamed from: c */
    private static void m14112c(Context context) {
        Bundle bundle;
        synchronized (f7312a) {
            if (f7313b) {
                return;
            }
            f7313b = true;
            try {
                bundle = C2586c.m14193a(context).m14198a(context.getPackageName(), 128).metaData;
            } catch (PackageManager.NameNotFoundException e) {
                Log.wtf("MetadataValueReader", "This should never happen.", e);
            }
            if (bundle == null) {
                return;
            }
            f7314c = bundle.getString("com.google.app.id");
            f7315d = bundle.getInt("com.google.android.gms.version");
        }
    }
}
