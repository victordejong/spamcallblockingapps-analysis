package net.pubnative.lite.sdk.utils;

import android.util.Log;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/utils/Logger.class */
public class Logger {
    private static final String TAG = "HyBid";
    private static Level sLogLevel = Level.info;

    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/utils/Logger$Level.class */
    public enum Level {
        verbose(1),
        debug(2),
        info(3),
        warning(4),
        error(5),
        none(6);
        
        private int mValue;

        Level(int i) {
            this.mValue = i;
        }

        public final int getValue() {
            return this.mValue;
        }
    }

    public static void d(String str, String str2) {
        d(str, str2, null);
    }

    public static void d(String str, String str2, Throwable th) {
        Level level = sLogLevel;
        if (level != null && level.getValue() <= Level.debug.getValue()) {
            StringBuilder sb = new StringBuilder("[");
            sb.append(str);
            sb.append("] ");
            sb.append(str2);
        }
    }

    public static void e(String str, String str2) {
        e(str, str2, null);
    }

    public static void e(String str, String str2, Throwable th) {
        Level level = sLogLevel;
        if (level != null && level.getValue() <= Level.error.getValue()) {
            Log.e(TAG, "[" + str + "] " + str2, th);
        }
    }

    public static void setLogLevel(Level level) {
        sLogLevel = level;
    }

    public static void w(String str, String str2) {
        w(str, str2, null);
    }

    public static void w(String str, String str2, Throwable th) {
        Level level = sLogLevel;
        if (level != null && level.getValue() <= Level.warning.getValue()) {
            Log.w(TAG, "[" + str + "] " + str2, th);
        }
    }
}
