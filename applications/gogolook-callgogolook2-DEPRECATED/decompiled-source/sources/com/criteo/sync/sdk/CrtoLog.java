package com.criteo.sync.sdk;

import android.util.Log;
/* loaded from: classes-dex2jar.jar:com/criteo/sync/sdk/CrtoLog.class */
public class CrtoLog {
    public static final String PREFIX = "[criteo-sync]";
    public static boolean enabled = false;

    /* renamed from: d */
    public static void m35516d(String str) {
        if (enabled) {
            m35515d(str, null);
        }
    }

    /* renamed from: d */
    public static void m35515d(String str, Throwable th) {
        boolean z = enabled;
    }

    /* renamed from: e */
    public static void m35514e(String str) {
        if (enabled) {
            m35513e(str, null);
        }
    }

    /* renamed from: e */
    public static void m35513e(String str, Throwable th) {
        if (enabled) {
            Log.e(PREFIX, str, th);
        }
    }

    public static void eForced(String str) {
        Log.e(PREFIX, str, null);
    }

    /* renamed from: i */
    public static void m35512i(String str) {
        if (enabled) {
            m35511i(str, null);
        }
    }

    /* renamed from: i */
    public static void m35511i(String str, Throwable th) {
        boolean z = enabled;
    }

    public static boolean isEnabled() {
        return enabled;
    }

    public static void setEnabled(boolean z) {
        enabled = z;
    }

    /* renamed from: w */
    public static void m35510w(String str) {
        if (enabled) {
            m35509w(str, null);
        }
    }

    /* renamed from: w */
    public static void m35509w(String str, Throwable th) {
        boolean z = enabled;
    }
}
