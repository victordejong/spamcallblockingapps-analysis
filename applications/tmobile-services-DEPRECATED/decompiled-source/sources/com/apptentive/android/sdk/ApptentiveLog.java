package com.apptentive.android.sdk;

import android.content.Context;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.apptentive.android.sdk.debug.AsyncLogWriter;
import com.apptentive.android.sdk.util.StringUtils;
import com.apptentive.android.sdk.util.threading.DispatchQueue;
import java.io.File;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/ApptentiveLog.class */
public class ApptentiveLog {
    private static LogListener logListener;
    private static Level logLevel = Level.INFO;
    private static boolean shouldSanitizeLogMessages = true;

    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/ApptentiveLog$Level.class */
    public enum Level {
        VERBOSE("V", 2, 2),
        DEBUG("D", 3, 3),
        INFO("I", 4, 4),
        WARN("W", 5, 5),
        ERROR("E", 6, 6),
        ASSERT("A", 7, 7),
        UNKNOWN("?", -1, -1);
        
        private final int androidLevel;
        private final int level;
        private final String shortName;

        Level(String str, int i, int i2) {
            this.shortName = str;
            this.level = i;
            this.androidLevel = i2;
        }

        public static Level parse(String str) {
            if (!StringUtils.isNullOrEmpty(str)) {
                try {
                    return valueOf(str);
                } catch (Exception e) {
                }
            }
            return UNKNOWN;
        }

        public boolean canLog(Level level) {
            return level.level >= this.level;
        }

        public int getAndroidLevel() {
            return this.androidLevel;
        }

        public int getLevel() {
            return this.level;
        }

        public String getShortName() {
            return this.shortName;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/ApptentiveLog$LogListener.class */
    public interface LogListener {
        void onLogMessage(@NonNull Level level, @NonNull String str);
    }

    /* renamed from: a */
    public static void m15648a(ApptentiveLogTag apptentiveLogTag, Throwable th, String str, Object... objArr) {
        log(Level.ASSERT, apptentiveLogTag, th, str, objArr);
    }

    /* renamed from: a */
    public static void m15647a(String str, Object... objArr) {
        log(Level.ASSERT, null, null, str, objArr);
    }

    public static boolean canLog(Level level) {
        return logLevel.canLog(level);
    }

    /* renamed from: d */
    public static void m15646d(ApptentiveLogTag apptentiveLogTag, String str, Object... objArr) {
        log(Level.DEBUG, apptentiveLogTag, null, str, objArr);
    }

    /* renamed from: d */
    public static void m15645d(String str, Object... objArr) {
        log(Level.DEBUG, null, null, str, objArr);
    }

    /* renamed from: e */
    public static void m15644e(ApptentiveLogTag apptentiveLogTag, String str, Object... objArr) {
        log(Level.ERROR, apptentiveLogTag, null, str, objArr);
    }

    /* renamed from: e */
    public static void m15643e(ApptentiveLogTag apptentiveLogTag, Throwable th, String str, Object... objArr) {
        log(Level.ERROR, apptentiveLogTag, th, str, objArr);
    }

    /* renamed from: e */
    public static void m15642e(String str, Object... objArr) {
        log(Level.ERROR, null, null, str, objArr);
    }

    /* renamed from: e */
    public static void m15641e(Throwable th, String str, Object... objArr) {
        log(Level.ERROR, null, th, str, objArr);
    }

    public static Level getLogLevel() {
        return logLevel;
    }

    @NonNull
    public static File getLogsDirectory(Context context) {
        if (context != null) {
            return new File(context.getCacheDir(), "com.apptentive.logs");
        }
        throw new IllegalArgumentException("Context is null");
    }

    public static Object hideIfSanitized(Object obj) {
        Object obj2 = obj;
        if (obj != null) {
            obj2 = obj;
            if (shouldSanitizeLogMessages) {
                obj2 = "<HIDDEN>";
            }
        }
        return obj2;
    }

    /* renamed from: i */
    public static void m15640i(ApptentiveLogTag apptentiveLogTag, String str, Object... objArr) {
        log(Level.INFO, apptentiveLogTag, null, str, objArr);
    }

    /* renamed from: i */
    public static void m15639i(String str, Object... objArr) {
        log(Level.INFO, null, null, str, objArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void initializeLogWriter(Context context, int i) {
        if (context != null) {
            logListener = new AsyncLogWriter(getLogsDirectory(context), i);
            return;
        }
        throw new IllegalArgumentException("Context is null");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isLogWriterInitialized() {
        return logListener != null;
    }

    private static void log(Level level, @Nullable ApptentiveLogTag apptentiveLogTag, Throwable th, String str, Object... objArr) {
        try {
            logGuarded(level, apptentiveLogTag, th, str, objArr);
        } catch (Exception e) {
            Log.println(6, "Apptentive", "Exception while trying to log a message: " + e.getMessage());
        }
    }

    private static void log0(Level level, String str) {
        try {
            if (canLog(level)) {
                Log.println(level.getAndroidLevel(), "Apptentive", str);
            }
        } catch (Exception e) {
            System.out.println(str);
        }
        LogListener logListener2 = logListener;
        if (logListener2 != null) {
            logListener2.onLogMessage(level, str);
        }
    }

    private static void logGuarded(Level level, ApptentiveLogTag apptentiveLogTag, Throwable th, String str, Object... objArr) {
        Level level2 = level;
        String str2 = str;
        if (objArr != null) {
            level2 = level;
            str2 = str;
            if (objArr.length > 0) {
                level2 = level;
                str2 = str;
                if (str != null) {
                    level2 = level;
                    str2 = str;
                    if (str.length() > 0) {
                        try {
                            str2 = String.format(str, objArr);
                            level2 = level;
                        } catch (Exception e) {
                            str2 = "Error formatting log message: " + str;
                            level2 = Level.ERROR;
                        }
                    }
                }
            }
        }
        StringBuilder sb = null;
        if (!DispatchQueue.isMainQueue()) {
            sb = new StringBuilder();
            sb.append('[');
            sb.append(Thread.currentThread().getName());
            sb.append(']');
        }
        StringBuilder sb2 = sb;
        if (apptentiveLogTag != null) {
            if (sb == null) {
                sb = new StringBuilder();
            } else {
                sb.append(' ');
            }
            sb.append('[');
            sb.append(apptentiveLogTag.toString());
            sb.append(']');
            sb2 = sb;
        }
        String str3 = str2;
        if (sb2 != null) {
            sb2.append(' ');
            sb2.append(str2);
            str3 = sb2.toString();
        }
        log0(level2, str3);
        if (th != null) {
            log0(level2, StringUtils.getStackTrace(th));
        }
    }

    public static void overrideLogLevel(Level level) {
        logLevel = level;
    }

    public static void setShouldSanitizeLogMessages(boolean z) {
        shouldSanitizeLogMessages = z;
    }

    public static boolean shouldSanitizeLogMessages() {
        return shouldSanitizeLogMessages;
    }

    /* renamed from: v */
    public static void m15638v(ApptentiveLogTag apptentiveLogTag, String str, Object... objArr) {
        log(Level.VERBOSE, apptentiveLogTag, null, str, objArr);
    }

    /* renamed from: v */
    public static void m15637v(ApptentiveLogTag apptentiveLogTag, Throwable th, String str, Object... objArr) {
        log(Level.VERBOSE, apptentiveLogTag, th, str, objArr);
    }

    /* renamed from: v */
    public static void m15636v(String str, Object... objArr) {
        log(Level.VERBOSE, null, null, str, objArr);
    }

    /* renamed from: w */
    public static void m15635w(ApptentiveLogTag apptentiveLogTag, String str, Object... objArr) {
        log(Level.WARN, apptentiveLogTag, null, str, objArr);
    }

    /* renamed from: w */
    public static void m15634w(ApptentiveLogTag apptentiveLogTag, Throwable th, String str, Object... objArr) {
        log(Level.WARN, apptentiveLogTag, th, str, objArr);
    }

    /* renamed from: w */
    public static void m15633w(String str, Object... objArr) {
        log(Level.WARN, null, null, str, objArr);
    }

    /* renamed from: w */
    public static void m15632w(Throwable th, String str, Object... objArr) {
        log(Level.WARN, null, th, str, objArr);
    }
}
