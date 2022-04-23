package com.explorestack.iab.mraid;

import android.util.Log;
import com.explorestack.iab.utils.Logger;
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/mraid/MraidLog.class */
public class MraidLog {

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f19100a = new Logger("MraidLog");

    public static Logger.LogLevel a() {
        return Logger.a();
    }

    public static void a(String str) {
        f19100a.a(str);
    }

    public static void a(String str, String str2) {
        Logger logger = f19100a;
        if (Logger.a(Logger.LogLevel.warning, str2)) {
            String str3 = logger.f19162a;
            Log.w(str3, "[" + str + "] " + str2);
        }
    }

    public static void a(String str, Throwable th) {
        f19100a.a(str, th);
    }

    public static void b(String str, String str2) {
        f19100a.b(str, str2);
    }

    public static void d(String str, String str2) {
        f19100a.a(str, str2);
    }

    public static void setLoggingLevel(Logger.LogLevel logLevel) {
        Logger.a(logLevel);
    }
}
