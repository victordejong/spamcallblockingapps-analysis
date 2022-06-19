package net.pubnative.lite.sdk.mraid.internal;

import android.util.Log;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/mraid/internal/MRAIDLog.class */
public class MRAIDLog {
    private static LOG_LEVEL LEVEL = LOG_LEVEL.warning;
    private static final String TAG = "HyBid-MRAID";

    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/mraid/internal/MRAIDLog$LOG_LEVEL.class */
    public enum LOG_LEVEL {
        verbose(1),
        debug(2),
        info(3),
        warning(4),
        error(5),
        none(6);
        
        private int value;

        LOG_LEVEL(int i) {
            this.value = i;
        }

        public final int getValue() {
            return this.value;
        }
    }

    /* renamed from: d */
    public static void m640d(String str) {
        LEVEL.getValue();
        LOG_LEVEL.debug.getValue();
    }

    /* renamed from: d */
    public static void m639d(String str, String str2) {
        if (LEVEL.getValue() <= LOG_LEVEL.debug.getValue()) {
            StringBuilder sb = new StringBuilder("[");
            sb.append(str);
            sb.append("] ");
            sb.append(str2);
        }
    }

    /* renamed from: e */
    public static void m638e(String str) {
        if (LEVEL.getValue() <= LOG_LEVEL.error.getValue()) {
            Log.e(TAG, str);
        }
    }

    /* renamed from: e */
    public static void m637e(String str, String str2) {
        if (LEVEL.getValue() <= LOG_LEVEL.error.getValue()) {
            Log.e(TAG, "[" + str + "] " + str2);
        }
    }

    public static LOG_LEVEL getLoggingLevel() {
        return LEVEL;
    }

    /* renamed from: i */
    public static void m636i(String str) {
        LEVEL.getValue();
        LOG_LEVEL.info.getValue();
    }

    /* renamed from: i */
    public static void m635i(String str, String str2) {
        if (LEVEL.getValue() <= LOG_LEVEL.info.getValue()) {
            StringBuilder sb = new StringBuilder("[");
            sb.append(str);
            sb.append("] ");
            sb.append(str2);
        }
    }

    public static void setLoggingLevel(LOG_LEVEL log_level) {
        StringBuilder sb = new StringBuilder("Changing logging level from :");
        sb.append(LEVEL);
        sb.append(". To:");
        sb.append(log_level);
        LEVEL = log_level;
    }

    /* renamed from: v */
    public static void m634v(String str) {
        LEVEL.getValue();
        LOG_LEVEL.verbose.getValue();
    }

    /* renamed from: v */
    public static void m633v(String str, String str2) {
        if (LEVEL.getValue() <= LOG_LEVEL.verbose.getValue()) {
            StringBuilder sb = new StringBuilder("[");
            sb.append(str);
            sb.append("] ");
            sb.append(str2);
        }
    }

    /* renamed from: w */
    public static void m632w(String str) {
        if (LEVEL.getValue() <= LOG_LEVEL.warning.getValue()) {
            Log.w(TAG, str);
        }
    }

    /* renamed from: w */
    public static void m631w(String str, String str2) {
        if (LEVEL.getValue() <= LOG_LEVEL.warning.getValue()) {
            Log.w(TAG, "[" + str + "] " + str2);
        }
    }
}
