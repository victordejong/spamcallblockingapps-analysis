package com.appsflyer;

import android.app.Application;
import android.content.SharedPreferences;
import android.support.annotation.NonNull;
import com.appsflyer.internal.C0726ai;
import com.appsflyer.internal.C0739aj;
import com.appsflyer.internal.C0761ay;
import com.razorpay.AnalyticsConstants;
/* loaded from: classes-dex2jar.jar:com/appsflyer/AFLogger.class */
public final class AFLogger {
    private static final long AFKeystoreWrapper = System.currentTimeMillis();

    /* loaded from: classes-dex2jar.jar:com/appsflyer/AFLogger$LogLevel.class */
    public enum LogLevel {
        NONE(0),
        ERROR(1),
        WARNING(2),
        INFO(3),
        DEBUG(4),
        VERBOSE(5);
        
        private int values;

        LogLevel(int i) {
            this.values = i;
        }

        public final int getLevel() {
            return this.values;
        }
    }

    @NonNull
    private static String AFInAppEventParameterName(String str, boolean z) {
        String str2 = str;
        if (str == null) {
            str2 = AnalyticsConstants.NULL;
        }
        if (z || LogLevel.VERBOSE.getLevel() <= AppsFlyerProperties.getInstance().getInt("logLevel", LogLevel.NONE.getLevel())) {
            StringBuilder sb = new StringBuilder("(");
            sb.append(System.currentTimeMillis() - AFKeystoreWrapper);
            sb.append(") [");
            sb.append(Thread.currentThread().getName());
            sb.append("] ");
            sb.append(str2);
            return sb.toString();
        }
        return str2;
    }

    public static void AFInAppEventParameterName(String str) {
        if (AFInAppEventParameterName(LogLevel.VERBOSE)) {
            AFInAppEventParameterName(str, false);
        }
        C0739aj.AFInAppEventParameterName().AFInAppEventType(null, "V", AFInAppEventParameterName(str, true));
    }

    private static boolean AFInAppEventParameterName(LogLevel logLevel) {
        return logLevel.getLevel() <= AppsFlyerProperties.getInstance().getInt("logLevel", LogLevel.NONE.getLevel());
    }

    public static void AFInAppEventType(String str) {
        if (AFInAppEventParameterName(LogLevel.DEBUG)) {
            AFInAppEventParameterName(str, false);
        }
        C0739aj.AFInAppEventParameterName().AFInAppEventType(null, "D", AFInAppEventParameterName(str, true));
    }

    public static void AFKeystoreWrapper(String str) {
        if (!valueOf()) {
            AFInAppEventParameterName(str, false);
        }
        C0739aj.AFInAppEventParameterName().AFInAppEventType(null, "F", str);
    }

    public static void valueOf(String str) {
        values(str, true);
    }

    public static void valueOf(String str, Throwable th) {
        valueOf(str, th, true, false);
    }

    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    private static void valueOf(String str, Throwable th, boolean z, boolean z2) {
        if (AFInAppEventParameterName(LogLevel.ERROR)) {
            String str2 = str;
            if (str == null) {
                StringBuilder sb = new StringBuilder();
                sb.append(th.getClass().getSimpleName());
                sb.append(" at ");
                sb.append(th.getStackTrace()[0].toString());
                str2 = sb.toString();
            }
            AFInAppEventParameterName(str2, false);
        }
        C0739aj AFInAppEventParameterName = C0739aj.AFInAppEventParameterName();
        Throwable cause = th.getCause();
        AFInAppEventParameterName.AFInAppEventType("exception", th.getClass().getSimpleName(), C0739aj.AFInAppEventType(cause == null ? th.getMessage() : cause.getMessage(), cause == null ? th.getStackTrace() : cause.getStackTrace()));
        Application application = C0761ay.AFKeystoreWrapper;
        if (application != null) {
            SharedPreferences.Editor edit = C0726ai.values(application).edit();
            Application application2 = C0761ay.AFKeystoreWrapper;
            edit.putLong("exception_number", (application2 == null ? (char) 65535 : C0726ai.values(application2).getLong("exception_number", 0L)) + 1).apply();
        }
    }

    public static void valueOf(Throwable th) {
        valueOf(null, th, false, false);
    }

    private static boolean valueOf() {
        return AppsFlyerProperties.getInstance().isLogsDisabledCompletely();
    }

    public static void values(String str) {
        if (AFInAppEventParameterName(LogLevel.WARNING)) {
            AFInAppEventParameterName(str, false);
        }
        C0739aj.AFInAppEventParameterName().AFInAppEventType(null, "W", AFInAppEventParameterName(str, true));
    }

    public static void values(String str, Throwable th) {
        valueOf(str, th, true, true);
    }

    public static void values(String str, boolean z) {
        if (AFInAppEventParameterName(LogLevel.INFO)) {
            AFInAppEventParameterName(str, false);
        }
        if (z) {
            C0739aj.AFInAppEventParameterName().AFInAppEventType(null, "I", AFInAppEventParameterName(str, true));
        }
    }
}
