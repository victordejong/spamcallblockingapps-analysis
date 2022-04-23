package com.appsflyer.internal;

import android.app.Application;
import com.appsflyer.AppsFlyerLibCore;
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/Exlytics.class */
public class Exlytics {
    public static final String EXCEPTION_COUNT_KEY = "exception_number";

    /* renamed from: ɩ  reason: contains not printable characters */
    private static Application f170;

    public static long get() {
        Application application = f170;
        if (application == null) {
            return -1L;
        }
        return AppsFlyerLibCore.getSharedPreferences(application).getLong(EXCEPTION_COUNT_KEY, 0L);
    }

    public static void increment() {
        Application application = f170;
        if (application != null) {
            AppsFlyerLibCore.getSharedPreferences(application).edit().putLong(EXCEPTION_COUNT_KEY, get() + 1).apply();
        }
    }

    public static void setContext(Application application) {
        f170 = application;
    }
}
