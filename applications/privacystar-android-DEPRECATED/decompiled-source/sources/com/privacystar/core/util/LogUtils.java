package com.privacystar.core.util;

import android.util.Log;
import android.webkit.ConsoleMessage;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/LogUtils.class */
public class LogUtils {
    public static final boolean LOGGING_ENABLED = true;
    private static final String LOG_PREFIX = "privacystar_";
    private static final int LOG_PREFIX_LENGTH = LOG_PREFIX.length();
    private static final int MAX_LOG_TAG_LENGTH = 23;

    /* renamed from: com.privacystar.core.util.LogUtils$1 */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/LogUtils$1.class */
    static /* synthetic */ class C16771 {
        static final /* synthetic */ int[] $SwitchMap$android$webkit$ConsoleMessage$MessageLevel = new int[ConsoleMessage.MessageLevel.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            try {
                $SwitchMap$android$webkit$ConsoleMessage$MessageLevel[ConsoleMessage.MessageLevel.DEBUG.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$android$webkit$ConsoleMessage$MessageLevel[ConsoleMessage.MessageLevel.ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$android$webkit$ConsoleMessage$MessageLevel[ConsoleMessage.MessageLevel.WARNING.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$android$webkit$ConsoleMessage$MessageLevel[ConsoleMessage.MessageLevel.TIP.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$android$webkit$ConsoleMessage$MessageLevel[ConsoleMessage.MessageLevel.LOG.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    private LogUtils() {
    }

    public static void LOGD(String str, String str2) {
        if (Log.isLoggable(str, 3)) {
            Log.d(str, str2);
        }
    }

    public static void LOGD(String str, String str2, Throwable th) {
        if (Log.isLoggable(str, 3)) {
            Log.d(str, str2, th);
        }
    }

    public static void LOGE(String str, String str2) {
        Log.e(str, str2);
    }

    public static void LOGE(String str, String str2, Throwable th) {
        Log.e(str, str2, th);
    }

    public static void LOGI(String str, String str2) {
        Log.i(str, str2);
    }

    public static void LOGI(String str, String str2, Throwable th) {
        Log.i(str, str2, th);
    }

    public static void LOGV(String str, String str2) {
        if (Log.isLoggable(str, 2)) {
            Log.v(str, str2);
        }
    }

    public static void LOGV(String str, String str2, Throwable th) {
        if (Log.isLoggable(str, 2)) {
            Log.v(str, str2, th);
        }
    }

    public static void LOGW(String str, String str2) {
        Log.w(str, str2);
    }

    public static void LOGW(String str, String str2, Throwable th) {
        Log.w(str, str2, th);
    }

    public static int getLogLevel(ConsoleMessage.MessageLevel messageLevel) {
        int i;
        switch (C16771.$SwitchMap$android$webkit$ConsoleMessage$MessageLevel[messageLevel.ordinal()]) {
            case 1:
                i = 1;
                break;
            case 2:
                i = 4;
                break;
            case 3:
                i = 3;
                break;
            default:
                i = 2;
                break;
        }
        return i;
    }

    public static String makeLogTag(Class cls) {
        return makeLogTag(cls.getSimpleName());
    }

    public static String makeLogTag(String str) {
        if (str.length() > 23 - LOG_PREFIX_LENGTH) {
            return LOG_PREFIX + str.substring(0, (23 - LOG_PREFIX_LENGTH) - 1);
        }
        return LOG_PREFIX + str;
    }
}
