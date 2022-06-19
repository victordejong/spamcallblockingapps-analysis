package com.explorestack.iab.utils;

import android.text.TextUtils;
import android.util.Log;
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/utils/Logger.class */
public class Logger {

    /* renamed from: b */
    private static LogLevel f32542b = LogLevel.error;

    /* renamed from: a */
    public final String f32543a;

    /* loaded from: classes2-dex2jar.jar:com/explorestack/iab/utils/Logger$LogLevel.class */
    public enum LogLevel {
        debug(1),
        info(2),
        warning(3),
        error(4),
        none(5);
        
        private int value;

        LogLevel(int i) {
            this.value = i;
        }

        public final int getValue() {
            return this.value;
        }
    }

    public Logger(String str) {
        this.f32543a = str;
    }

    /* renamed from: a */
    public static LogLevel m24131a() {
        return f32542b;
    }

    /* renamed from: a */
    public static void m24130a(LogLevel logLevel) {
        String.format("Changing logging level. From: %s, To: %s", f32542b, logLevel);
        f32542b = logLevel;
    }

    /* renamed from: a */
    public static boolean m24129a(LogLevel logLevel, String str) {
        return !TextUtils.isEmpty(str) && m24125b(logLevel);
    }

    /* renamed from: b */
    private static boolean m24125b(LogLevel logLevel) {
        LogLevel logLevel2 = f32542b;
        return (logLevel2 == null || logLevel == null || logLevel2.getValue() > logLevel.getValue()) ? false : true;
    }

    /* renamed from: a */
    public final void m24128a(String str) {
        if (m24129a(LogLevel.error, str)) {
            Log.e(this.f32543a, str);
        }
    }

    /* renamed from: a */
    public final void m24127a(String str, String str2) {
        if (m24129a(LogLevel.debug, str2)) {
            StringBuilder sb = new StringBuilder("[");
            sb.append(str);
            sb.append("] ");
            sb.append(str2);
        }
    }

    /* renamed from: a */
    public final void m24126a(String str, Throwable th) {
        if (m24129a(LogLevel.error, str)) {
            Log.e(this.f32543a, str, th);
        }
    }

    /* renamed from: b */
    public final void m24124b(String str, String str2) {
        if (m24129a(LogLevel.error, str2)) {
            String str3 = this.f32543a;
            Log.e(str3, "[" + str + "] " + str2);
        }
    }
}
