package com.tenor.android.core.util;

import android.util.Log;
/* loaded from: classes3-dex2jar.jar:com/tenor/android/core/util/AbstractLogUtils.class */
public abstract class AbstractLogUtils {
    public static boolean sDebuggable = false;

    /* renamed from: e */
    public static int m36036e(Object obj, String str) {
        return isDebuggable() ? Log.e(obj.getClass().getCanonicalName(), str) : 0;
    }

    /* renamed from: e */
    public static int m36035e(Object obj, String str, Throwable th) {
        return isDebuggable() ? m36033e(obj.getClass().getCanonicalName(), str, th) : 0;
    }

    /* renamed from: e */
    public static int m36034e(String str, String str2) {
        return isDebuggable() ? Log.e(str, str2) : 0;
    }

    /* renamed from: e */
    public static int m36033e(String str, String str2, Throwable th) {
        return isDebuggable() ? Log.e(str, str2, th) : 0;
    }

    public static boolean isDebuggable() {
        return sDebuggable;
    }

    public static void setDebuggable(boolean z) {
        sDebuggable = z;
    }
}
