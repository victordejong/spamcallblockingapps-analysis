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

    /* renamed from: d */
    public static void m630d(String str, String str2) {
        m629d(str, str2, null);
    }

    /* renamed from: d */
    public static void m629d(String str, String str2, Throwable th) {
        Level level = sLogLevel;
        if (level == null || level.getValue() > Level.debug.getValue()) {
            return;
        }
        StringBuilder sb = new StringBuilder("[");
        sb.append(str);
        sb.append("] ");
        sb.append(str2);
    }

    /* renamed from: e */
    public static void m628e(String str, String str2) {
        m627e(str, str2, null);
    }

    /* renamed from: e */
    public static void m627e(String str, String str2, Throwable th) {
        Level level = sLogLevel;
        if (level == null || level.getValue() > Level.error.getValue()) {
            return;
        }
        Log.e(TAG, "[" + str + "] " + str2, th);
    }

    public static void setLogLevel(Level level) {
        sLogLevel = level;
    }

    /* renamed from: w */
    public static void m626w(String str, String str2) {
        m625w(str, str2, null);
    }

    /* renamed from: w */
    public static void m625w(String str, String str2, Throwable th) {
        Level level = sLogLevel;
        if (level == null || level.getValue() > Level.warning.getValue()) {
            return;
        }
        Log.w(TAG, "[" + str + "] " + str2, th);
    }
}
