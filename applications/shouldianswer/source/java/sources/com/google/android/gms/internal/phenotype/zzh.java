package com.google.android.gms.internal.phenotype;

import android.content.Context;
import android.os.Build;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/phenotype/zzh.class */
public final class zzh<T> {
    private static final Object zzak = new Object();
    private static Context zzal = null;
    private static boolean zzam = false;
    private static volatile Boolean zzan = null;
    private static volatile Boolean zzbq = null;

    public static void init(Context context) {
        Context applicationContext;
        synchronized (zzak) {
            if ((Build.VERSION.SDK_INT < 24 || !context.isDeviceProtectedStorage()) && (applicationContext = context.getApplicationContext()) != null) {
                context = applicationContext;
            }
            if (zzal != context) {
                zzan = null;
            }
            zzal = context;
        }
        zzam = false;
    }

    public static void maybeInit(Context context) {
        if (zzal == null) {
            init(context);
        }
    }
}
