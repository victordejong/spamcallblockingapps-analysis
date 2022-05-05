package com.appsflyer;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.exifinterface.media.ExifInterface;
import com.appsflyer.internal.C1830ai;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/appsflyer/AFLogger.class */
public class AFLogger {

    /* renamed from: ι */
    public static long f1641 = System.currentTimeMillis();

    /* loaded from: classes-dex2jar.jar:com/appsflyer/AFLogger$LogLevel.class */
    public enum LogLevel {
        NONE(0),
        ERROR(1),
        WARNING(2),
        INFO(3),
        DEBUG(4),
        VERBOSE(5);
        

        /* renamed from: ɩ */
        public int f1643;

        LogLevel(int i) {
            this.f1643 = i;
        }

        public final int getLevel() {
            return this.f1643;
        }
    }

    public static void afDebugLog(String str) {
        if (m36284(LogLevel.DEBUG)) {
            m36287(str, false);
        }
        if (C1830ai.f1791 == null) {
            C1830ai.f1791 = new C1830ai();
        }
        C1830ai.f1791.m36172(null, "D", m36287(str, true));
    }

    public static void afErrorLog(String str, Throwable th) {
        m36289(str, th, true);
    }

    public static void afErrorLog(String str, Throwable th, boolean z) {
        m36289(str, th, z);
    }

    public static void afInfoLog(String str) {
        afInfoLog(str, true);
    }

    public static void afInfoLog(String str, boolean z) {
        if (m36284(LogLevel.INFO)) {
            m36287(str, false);
        }
        if (z) {
            if (C1830ai.f1791 == null) {
                C1830ai.f1791 = new C1830ai();
            }
            C1830ai.f1791.m36172(null, "I", m36287(str, true));
        }
    }

    public static void afRDLog(String str) {
        if (m36284(LogLevel.VERBOSE)) {
            m36287(str, false);
        }
        if (C1830ai.f1791 == null) {
            C1830ai.f1791 = new C1830ai();
        }
        C1830ai.f1791.m36172(null, ExifInterface.GPS_MEASUREMENT_INTERRUPTED, m36287(str, true));
    }

    public static void afWarnLog(String str) {
        m36283(str);
    }

    public static void resetDeltaTime() {
        f1641 = System.currentTimeMillis();
    }

    /* renamed from: ı */
    public static void m36289(String str, Throwable th, boolean z) {
        String[] strArr;
        if (m36284(LogLevel.ERROR) && z) {
            Log.e(AppsFlyerLibCore.LOG_TAG, m36287(str, false), th);
        }
        if (C1830ai.f1791 == null) {
            C1830ai.f1791 = new C1830ai();
        }
        C1830ai aiVar = C1830ai.f1791;
        Throwable cause = th.getCause();
        String simpleName = th.getClass().getSimpleName();
        String message = cause == null ? th.getMessage() : cause.getMessage();
        StackTraceElement[] stackTrace = cause == null ? th.getStackTrace() : cause.getStackTrace();
        if (stackTrace == null) {
            strArr = new String[]{message};
        } else {
            String[] strArr2 = new String[stackTrace.length + 1];
            strArr2[0] = message;
            for (int i = 1; i < stackTrace.length; i++) {
                strArr2[i] = stackTrace[i].toString();
            }
            strArr = strArr2;
        }
        aiVar.m36172("exception", simpleName, strArr);
    }

    @NonNull
    /* renamed from: ǃ */
    public static String m36287(String str, boolean z) {
        if (!z && LogLevel.VERBOSE.getLevel() > AppsFlyerProperties.getInstance().getInt("logLevel", LogLevel.NONE.getLevel())) {
            return str;
        }
        StringBuilder sb = new StringBuilder("(");
        sb.append(m36285(System.currentTimeMillis() - f1641));
        sb.append(") [");
        sb.append(Thread.currentThread().getName());
        sb.append("] ");
        sb.append(str);
        return sb.toString();
    }

    /* renamed from: ǃ */
    public static void m36288(String str) {
        if (!m36286()) {
            m36287(str, false);
        }
        if (C1830ai.f1791 == null) {
            C1830ai.f1791 = new C1830ai();
        }
        C1830ai.f1791.m36172(null, "F", str);
    }

    /* renamed from: ɩ */
    public static boolean m36286() {
        return AppsFlyerProperties.getInstance().isLogsDisabledCompletely();
    }

    /* renamed from: Ι */
    public static String m36285(long j) {
        long hours = TimeUnit.MILLISECONDS.toHours(j);
        long millis = j - TimeUnit.HOURS.toMillis(hours);
        long minutes = TimeUnit.MILLISECONDS.toMinutes(millis);
        long millis2 = millis - TimeUnit.MINUTES.toMillis(minutes);
        long seconds = TimeUnit.MILLISECONDS.toSeconds(millis2);
        return String.format(Locale.getDefault(), "%02d:%02d:%02d:%03d", Long.valueOf(hours), Long.valueOf(minutes), Long.valueOf(seconds), Long.valueOf(TimeUnit.MILLISECONDS.toMillis(millis2 - TimeUnit.SECONDS.toMillis(seconds))));
    }

    /* renamed from: Ι */
    public static void m36283(String str) {
        if (m36284(LogLevel.WARNING)) {
            m36287(str, false);
        }
        if (C1830ai.f1791 == null) {
            C1830ai.f1791 = new C1830ai();
        }
        C1830ai.f1791.m36172(null, ExifInterface.LONGITUDE_WEST, m36287(str, true));
    }

    /* renamed from: Ι */
    public static boolean m36284(LogLevel logLevel) {
        return logLevel.getLevel() <= AppsFlyerProperties.getInstance().getInt("logLevel", LogLevel.NONE.getLevel());
    }
}
