package com.facebook.ads.internal.threadcheck;

import android.os.Looper;
import android.util.Log;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/facebook/ads/internal/threadcheck/ThreadCheckViolationReporter.class */
public class ThreadCheckViolationReporter {
    public static void uiThreadViolationDetected(Class<?> cls, String str, String str2) {
        Looper mainLooper = Looper.getMainLooper();
        Log.e("THREADCHECK", String.format(Locale.US, "@UiThread annotation violation detected in %s.%s%s. Current looper is %s and main looper is %s.", cls.getName(), str, str2, Looper.myLooper(), mainLooper), new Exception());
    }

    public static void workerThreadViolationDetected(Class<?> cls, String str, String str2) {
        Looper mainLooper = Looper.getMainLooper();
        Log.e("THREADCHECK", String.format(Locale.US, "@WorkerThread annotation violation detected in %s.%s%s. Current looper is %s and main looper is %s.", cls.getName(), str, str2, Looper.myLooper(), mainLooper), new Exception());
    }
}
