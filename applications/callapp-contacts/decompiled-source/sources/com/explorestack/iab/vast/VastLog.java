package com.explorestack.iab.vast;

import android.util.Log;
import com.explorestack.iab.utils.Logger;
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/vast/VastLog.class */
public class VastLog {

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f19207a = new Logger("VastLog");

    public static void a(String str) {
        f19207a.a(str);
    }

    public static void a(String str, String str2) {
        f19207a.b(str, str2);
    }

    public static void a(String str, String str2, Throwable th) {
        Logger logger = f19207a;
        if (Logger.a(Logger.LogLevel.error, str2)) {
            String str3 = logger.f19162a;
            Log.e(str3, "[" + str + "] " + str2, th);
        }
    }

    public static void a(String str, Throwable th) {
        f19207a.a(str, th);
    }

    public static void d(String str, String str2) {
        f19207a.a(str, str2);
    }

    public static void setLoggingLevel(Logger.LogLevel logLevel) {
        Logger.a(logLevel);
    }
}
