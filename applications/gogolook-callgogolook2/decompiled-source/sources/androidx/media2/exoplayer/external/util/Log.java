package androidx.media2.exoplayer.external.util;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/util/Log.class */
public final class Log {
    public static final int LOG_LEVEL_ALL = 0;
    public static final int LOG_LEVEL_ERROR = 3;
    public static final int LOG_LEVEL_INFO = 1;
    public static final int LOG_LEVEL_OFF = Integer.MAX_VALUE;
    public static final int LOG_LEVEL_WARNING = 2;
    public static int logLevel = 0;
    public static boolean logStackTraces = true;

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/util/Log$LogLevel.class */
    public @interface LogLevel {
    }

    public static String appendThrowableMessage(String str, @Nullable Throwable th) {
        if (th == null) {
            return str;
        }
        String message = th.getMessage();
        if (!TextUtils.isEmpty(message)) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 3 + String.valueOf(message).length());
            sb.append(str);
            sb.append(" - ");
            sb.append(message);
            str = sb.toString();
        }
        return str;
    }

    /* renamed from: d */
    public static void m37489d(String str, String str2) {
        int i = logLevel;
    }

    /* renamed from: d */
    public static void m37488d(String str, String str2, @Nullable Throwable th) {
        if (!logStackTraces) {
            m37489d(str, appendThrowableMessage(str2, th));
        } else {
            int i = logLevel;
        }
    }

    /* renamed from: e */
    public static void m37487e(String str, String str2) {
        if (logLevel <= 3) {
            android.util.Log.e(str, str2);
        }
    }

    /* renamed from: e */
    public static void m37486e(String str, String str2, @Nullable Throwable th) {
        if (!logStackTraces) {
            m37487e(str, appendThrowableMessage(str2, th));
        } else if (logLevel <= 3) {
            android.util.Log.e(str, str2, th);
        }
    }

    public static int getLogLevel() {
        return logLevel;
    }

    /* renamed from: i */
    public static void m37485i(String str, String str2) {
        int i = logLevel;
    }

    /* renamed from: i */
    public static void m37484i(String str, String str2, @Nullable Throwable th) {
        if (!logStackTraces) {
            m37485i(str, appendThrowableMessage(str2, th));
        } else {
            int i = logLevel;
        }
    }

    public static void setLogLevel(int i) {
        logLevel = i;
    }

    public static void setLogStackTraces(boolean z) {
        logStackTraces = z;
    }

    /* renamed from: w */
    public static void m37483w(String str, String str2) {
        int i = logLevel;
    }

    /* renamed from: w */
    public static void m37482w(String str, String str2, @Nullable Throwable th) {
        if (!logStackTraces) {
            m37483w(str, appendThrowableMessage(str2, th));
        } else {
            int i = logLevel;
        }
    }

    public boolean getLogStackTraces() {
        return logStackTraces;
    }
}
