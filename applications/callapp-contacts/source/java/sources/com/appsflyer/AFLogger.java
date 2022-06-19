package com.appsflyer;

import android.util.Log;
import com.appsflyer.internal.C3406ae;
import com.appsflyer.internal.Exlytics;
import kotlinx.serialization.json.internal.JsonReaderKt;
/* loaded from: classes-dex2jar.jar:com/appsflyer/AFLogger.class */
public class AFLogger {

    /* renamed from: ι */
    private static final long f12713 = System.currentTimeMillis();

    /* loaded from: classes-dex2jar.jar:com/appsflyer/AFLogger$LogLevel.class */
    public enum LogLevel {
        NONE(0),
        ERROR(1),
        WARNING(2),
        INFO(3),
        DEBUG(4),
        VERBOSE(5);
        

        /* renamed from: ɩ */
        private int f12715;

        LogLevel(int i) {
            this.f12715 = i;
        }

        public final int getLevel() {
            return this.f12715;
        }
    }

    public static void afDebugLog(String str) {
        if (m38146(LogLevel.DEBUG)) {
            m38149(str, false);
        }
        C3406ae.m38019().m38018(null, "D", m38149(str, true));
    }

    public static void afErrorLog(String str, Throwable th) {
        m38145(str, th, true, false);
    }

    public static void afErrorLog(String str, Throwable th, boolean z) {
        m38145(str, th, true, z);
    }

    public static void afErrorLog(Throwable th) {
        m38145(null, th, false, false);
    }

    public static void afInfoLog(String str) {
        afInfoLog(str, true);
    }

    public static void afInfoLog(String str, boolean z) {
        if (m38146(LogLevel.INFO)) {
            m38149(str, false);
        }
        if (z) {
            C3406ae.m38019().m38018(null, "I", m38149(str, true));
        }
    }

    public static void afRDLog(String str) {
        if (m38146(LogLevel.VERBOSE)) {
            m38149(str, false);
        }
        C3406ae.m38019().m38018(null, "V", m38149(str, true));
    }

    public static void afWarnLog(String str) {
        m38150(str);
    }

    /* renamed from: ı */
    private static String m38149(String str, boolean z) {
        String str2 = str;
        if (str == null) {
            str2 = JsonReaderKt.NULL;
        }
        if (z || LogLevel.VERBOSE.getLevel() <= AppsFlyerProperties.getInstance().getInt("logLevel", LogLevel.NONE.getLevel())) {
            StringBuilder sb = new StringBuilder("(");
            sb.append(System.currentTimeMillis() - f12713);
            sb.append(") [");
            sb.append(Thread.currentThread().getName());
            sb.append("] ");
            sb.append(str2);
            return sb.toString();
        }
        return str2;
    }

    /* renamed from: ı */
    public static void m38150(String str) {
        if (m38146(LogLevel.WARNING)) {
            Log.w(AppsFlyerLibCore.LOG_TAG, m38149(str, false));
        }
        C3406ae.m38019().m38018(null, "W", m38149(str, true));
    }

    /* renamed from: ɩ */
    private static boolean m38148() {
        return AppsFlyerProperties.getInstance().isLogsDisabledCompletely();
    }

    /* renamed from: Ι */
    public static void m38147(String str) {
        if (!m38148()) {
            m38149(str, false);
        }
        C3406ae.m38019().m38018(null, "F", str);
    }

    /* renamed from: ι */
    private static void m38145(String str, Throwable th, boolean z, boolean z2) {
        if (m38146(LogLevel.ERROR)) {
            String str2 = str;
            if (str == null) {
                str2 = th.getClass().getSimpleName();
            }
            String m38149 = m38149(str2, false);
            if (z2) {
                Log.e(AppsFlyerLibCore.LOG_TAG, m38149, th);
            }
        }
        C3406ae m38019 = C3406ae.m38019();
        Throwable cause = th.getCause();
        m38019.m38018("exception", th.getClass().getSimpleName(), C3406ae.m38009(cause == null ? th.getMessage() : cause.getMessage(), cause == null ? th.getStackTrace() : cause.getStackTrace()));
        Exlytics.increment();
    }

    /* renamed from: ι */
    private static boolean m38146(LogLevel logLevel) {
        return logLevel.getLevel() <= AppsFlyerProperties.getInstance().getInt("logLevel", LogLevel.NONE.getLevel());
    }
}
