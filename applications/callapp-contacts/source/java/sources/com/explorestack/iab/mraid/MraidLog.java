package com.explorestack.iab.mraid;

import android.util.Log;
import com.explorestack.iab.utils.Logger;
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/mraid/MraidLog.class */
public class MraidLog {

    /* renamed from: a */
    private static final Logger f32452a = new Logger("MraidLog");

    /* renamed from: a */
    public static Logger.LogLevel m24190a() {
        return Logger.m24131a();
    }

    /* renamed from: a */
    public static void m24189a(String str) {
        f32452a.m24128a(str);
    }

    /* renamed from: a */
    public static void m24188a(String str, String str2) {
        Logger logger = f32452a;
        if (Logger.m24129a(Logger.LogLevel.warning, str2)) {
            String str3 = logger.f32543a;
            Log.w(str3, "[" + str + "] " + str2);
        }
    }

    /* renamed from: a */
    public static void m24187a(String str, Throwable th) {
        f32452a.m24126a(str, th);
    }

    /* renamed from: b */
    public static void m24186b(String str, String str2) {
        f32452a.m24124b(str, str2);
    }

    /* renamed from: d */
    public static void m24185d(String str, String str2) {
        f32452a.m24127a(str, str2);
    }

    public static void setLoggingLevel(Logger.LogLevel logLevel) {
        Logger.m24130a(logLevel);
    }
}
