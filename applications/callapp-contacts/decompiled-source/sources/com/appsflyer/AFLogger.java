package com.appsflyer;

import android.util.Log;
import com.appsflyer.internal.Exlytics;
import com.appsflyer.internal.ae;
import kotlinx.serialization.json.internal.JsonReaderKt;
/* loaded from: classes-dex2jar.jar:com/appsflyer/AFLogger.class */
public class AFLogger {

    /* renamed from: ι  reason: contains not printable characters */
    private static final long f37 = System.currentTimeMillis();

    /* loaded from: classes-dex2jar.jar:com/appsflyer/AFLogger$LogLevel.class */
    public enum LogLevel {
        NONE(0),
        ERROR(1),
        WARNING(2),
        INFO(3),
        DEBUG(4),
        VERBOSE(5);
        

        /* renamed from: ɩ  reason: contains not printable characters */
        private int f39;

        LogLevel(int i) {
            this.f39 = i;
        }

        public final int getLevel() {
            return this.f39;
        }
    }

    public static void afDebugLog(String str) {
        if (m797(LogLevel.DEBUG)) {
            m792(str, false);
        }
        ae.m938().m948(null, "D", m792(str, true));
    }

    public static void afErrorLog(String str, Throwable th) {
        m796(str, th, true, false);
    }

    public static void afErrorLog(String str, Throwable th, boolean z) {
        m796(str, th, true, z);
    }

    public static void afErrorLog(Throwable th) {
        m796(null, th, false, false);
    }

    public static void afInfoLog(String str) {
        afInfoLog(str, true);
    }

    public static void afInfoLog(String str, boolean z) {
        if (m797(LogLevel.INFO)) {
            m792(str, false);
        }
        if (z) {
            ae.m938().m948(null, "I", m792(str, true));
        }
    }

    public static void afRDLog(String str) {
        if (m797(LogLevel.VERBOSE)) {
            m792(str, false);
        }
        ae.m938().m948(null, "V", m792(str, true));
    }

    public static void afWarnLog(String str) {
        m793(str);
    }

    /* renamed from: ı  reason: contains not printable characters */
    private static String m792(String str, boolean z) {
        String str2 = str;
        if (str == null) {
            str2 = JsonReaderKt.NULL;
        }
        if (!z && LogLevel.VERBOSE.getLevel() > AppsFlyerProperties.getInstance().getInt("logLevel", LogLevel.NONE.getLevel())) {
            return str2;
        }
        StringBuilder sb = new StringBuilder("(");
        sb.append(System.currentTimeMillis() - f37);
        sb.append(") [");
        sb.append(Thread.currentThread().getName());
        sb.append("] ");
        sb.append(str2);
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: ı  reason: contains not printable characters */
    public static void m793(String str) {
        if (m797(LogLevel.WARNING)) {
            Log.w(AppsFlyerLibCore.LOG_TAG, m792(str, false));
        }
        ae.m938().m948(null, "W", m792(str, true));
    }

    /* renamed from: ɩ  reason: contains not printable characters */
    private static boolean m794() {
        return AppsFlyerProperties.getInstance().isLogsDisabledCompletely();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: Ι  reason: contains not printable characters */
    public static void m795(String str) {
        if (!m794()) {
            m792(str, false);
        }
        ae.m938().m948(null, "F", str);
    }

    /* renamed from: ι  reason: contains not printable characters */
    private static void m796(String str, Throwable th, boolean z, boolean z2) {
        if (m797(LogLevel.ERROR)) {
            String str2 = str;
            if (str == null) {
                str2 = th.getClass().getSimpleName();
            }
            String str3 = m792(str2, false);
            if (z2) {
                Log.e(AppsFlyerLibCore.LOG_TAG, str3, th);
            }
        }
        ae aeVar = ae.m938();
        Throwable cause = th.getCause();
        aeVar.m948("exception", th.getClass().getSimpleName(), ae.m944(cause == null ? th.getMessage() : cause.getMessage(), cause == null ? th.getStackTrace() : cause.getStackTrace()));
        Exlytics.increment();
    }

    /* renamed from: ι  reason: contains not printable characters */
    private static boolean m797(LogLevel logLevel) {
        return logLevel.getLevel() <= AppsFlyerProperties.getInstance().getInt("logLevel", LogLevel.NONE.getLevel());
    }
}
