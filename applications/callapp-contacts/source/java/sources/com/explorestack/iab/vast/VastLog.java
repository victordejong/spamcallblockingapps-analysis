package com.explorestack.iab.vast;

import android.util.Log;
import com.explorestack.iab.utils.Logger;
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/vast/VastLog.class */
public class VastLog {

    /* renamed from: a */
    private static final Logger f32641a = new Logger("VastLog");

    /* renamed from: a */
    public static void m24019a(String str) {
        f32641a.m24128a(str);
    }

    /* renamed from: a */
    public static void m24018a(String str, String str2) {
        f32641a.m24124b(str, str2);
    }

    /* renamed from: a */
    public static void m24017a(String str, String str2, Throwable th) {
        Logger logger = f32641a;
        if (Logger.m24129a(Logger.LogLevel.error, str2)) {
            String str3 = logger.f32543a;
            Log.e(str3, "[" + str + "] " + str2, th);
        }
    }

    /* renamed from: a */
    public static void m24016a(String str, Throwable th) {
        f32641a.m24126a(str, th);
    }

    /* renamed from: d */
    public static void m24015d(String str, String str2) {
        f32641a.m24127a(str, str2);
    }

    public static void setLoggingLevel(Logger.LogLevel logLevel) {
        Logger.m24130a(logLevel);
    }
}
