package com.explorestack.iab.utils;

import android.text.TextUtils;
import android.util.Log;
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/utils/Logger.class */
public class Logger {

    /* renamed from: b  reason: collision with root package name */
    private static LogLevel f19161b = LogLevel.error;

    /* renamed from: a  reason: collision with root package name */
    public final String f19162a;

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
        this.f19162a = str;
    }

    public static LogLevel a() {
        return f19161b;
    }

    public static void a(LogLevel logLevel) {
        String.format("Changing logging level. From: %s, To: %s", f19161b, logLevel);
        f19161b = logLevel;
    }

    public static boolean a(LogLevel logLevel, String str) {
        return !TextUtils.isEmpty(str) && b(logLevel);
    }

    private static boolean b(LogLevel logLevel) {
        LogLevel logLevel2 = f19161b;
        return (logLevel2 == null || logLevel == null || logLevel2.getValue() > logLevel.getValue()) ? false : true;
    }

    public final void a(String str) {
        if (a(LogLevel.error, str)) {
            Log.e(this.f19162a, str);
        }
    }

    public final void a(String str, String str2) {
        if (a(LogLevel.debug, str2)) {
            StringBuilder sb = new StringBuilder("[");
            sb.append(str);
            sb.append("] ");
            sb.append(str2);
        }
    }

    public final void a(String str, Throwable th) {
        if (a(LogLevel.error, str)) {
            Log.e(this.f19162a, str, th);
        }
    }

    public final void b(String str, String str2) {
        if (a(LogLevel.error, str2)) {
            String str3 = this.f19162a;
            Log.e(str3, "[" + str + "] " + str2);
        }
    }
}
