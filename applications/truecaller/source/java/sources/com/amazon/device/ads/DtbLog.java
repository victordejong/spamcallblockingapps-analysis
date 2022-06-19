package com.amazon.device.ads;

import android.util.Log;
import com.tenor.android.core.constant.StringConstant;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DtbLog.class */
public class DtbLog {
    private static final String DEBUG_ERROR = "DTBERROR::";
    private static boolean androidLogAvailable = false;
    private static boolean isCallerInfoEnabled = false;
    private static final Object listenerLock;
    private static DTBLogLevel logLevel;
    private static DtbLogListener logListener;
    private static final String sdkName = "Amazon DTB Ads API";

    static {
        try {
            Log.isLoggable("1234", 7);
            androidLogAvailable = true;
        } catch (Throwable th) {
            androidLogAvailable = false;
        }
        listenerLock = new Object();
        isCallerInfoEnabled = false;
        logLevel = DTBLogLevel.Warn;
    }

    public static void debug(String str) {
        if (logLevel.intValue() > DTBLogLevel.Debug.intValue() || !androidLogAvailable) {
            return;
        }
        getTag();
    }

    public static void debug(String str, String str2) {
        int intValue = logLevel.intValue();
        DTBLogLevel dTBLogLevel = DTBLogLevel.Debug;
        if (intValue > dTBLogLevel.intValue() || !androidLogAvailable) {
            return;
        }
        postMessageToListener(str, dTBLogLevel, str2);
    }

    public static void debugError(String str) {
        if (logLevel.intValue() > DTBLogLevel.Debug.intValue() || !androidLogAvailable) {
            return;
        }
        getTag();
    }

    public static void debugError(String str, String str2) {
        int intValue = logLevel.intValue();
        DTBLogLevel dTBLogLevel = DTBLogLevel.Debug;
        if (intValue > dTBLogLevel.intValue() || !androidLogAvailable) {
            return;
        }
        postMessageToListener(str, dTBLogLevel, C22128a.m8543z2(DEBUG_ERROR, str2));
    }

    public static void enableCallerInfo(boolean z) {
        isCallerInfoEnabled = z;
    }

    public static void error(String str) {
        if (logLevel.intValue() > DTBLogLevel.Error.intValue() || !androidLogAvailable) {
            return;
        }
        getTag();
    }

    public static void error(String str, String str2) {
        int intValue = logLevel.intValue();
        DTBLogLevel dTBLogLevel = DTBLogLevel.Error;
        if (intValue > dTBLogLevel.intValue() || !androidLogAvailable) {
            return;
        }
        postMessageToListener(str, dTBLogLevel, str2);
    }

    public static void fatal(String str) {
        if (logLevel.intValue() > DTBLogLevel.Fatal.intValue() || !androidLogAvailable) {
            return;
        }
        getTag();
    }

    public static void fatal(String str, Exception exc) {
        if (logLevel.intValue() > DTBLogLevel.Fatal.intValue() || !androidLogAvailable) {
            return;
        }
        getTag();
    }

    public static void fatal(String str, String str2) {
        int intValue = logLevel.intValue();
        DTBLogLevel dTBLogLevel = DTBLogLevel.Fatal;
        if (intValue > dTBLogLevel.intValue() || !androidLogAvailable) {
            return;
        }
        postMessageToListener(str, dTBLogLevel, str2);
    }

    public static void fatal(String str, String str2, Exception exc) {
        int intValue = logLevel.intValue();
        DTBLogLevel dTBLogLevel = DTBLogLevel.Fatal;
        if (intValue > dTBLogLevel.intValue() || !androidLogAvailable) {
            return;
        }
        postMessageToListener(str, dTBLogLevel, str2);
    }

    private static String getCallerInfo() {
        String str = "Amazon DTB Ads API";
        if (!isCallerInfoEnabled) {
            return "Amazon DTB Ads API";
        }
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        StackTraceElement stackTraceElement = null;
        if (stackTrace != null) {
            int i = 0;
            while (true) {
                stackTraceElement = null;
                if (i >= stackTrace.length) {
                    break;
                }
                String className = stackTrace[i].getClassName();
                if (className.startsWith("dalvik") || className.startsWith("java")) {
                    i++;
                } else {
                    int i2 = i + 2;
                    if (i2 < stackTrace.length) {
                        i = i2;
                    }
                    stackTraceElement = stackTrace[i];
                }
            }
        }
        if (stackTraceElement != null) {
            str = stackTraceElement.getClassName() + StringConstant.COLON + stackTraceElement.getMethodName() + StringConstant.COLON + stackTraceElement.getLineNumber();
        }
        return str;
    }

    private static String getTag() {
        return isCallerInfoEnabled ? getCallerInfo() : "Amazon DTB Ads API";
    }

    public static void info(String str) {
        if (logLevel.intValue() > DTBLogLevel.Info.intValue() || !androidLogAvailable) {
            return;
        }
        getTag();
    }

    public static void info(String str, String str2) {
        int intValue = logLevel.intValue();
        DTBLogLevel dTBLogLevel = DTBLogLevel.Info;
        if (intValue > dTBLogLevel.intValue() || !androidLogAvailable) {
            return;
        }
        postMessageToListener(str, dTBLogLevel, str2);
    }

    private static void postMessageToListener(String str, DTBLogLevel dTBLogLevel, String str2) {
        if (logListener == null) {
            return;
        }
        synchronized (listenerLock) {
            DtbLogListener dtbLogListener = logListener;
            if (dtbLogListener != null && str.equals(dtbLogListener.getTag())) {
                logListener.postMessage(dTBLogLevel, str2);
            }
        }
    }

    public static void setLogLevel(DTBLogLevel dTBLogLevel) {
        logLevel = dTBLogLevel;
    }

    public static void setLogListener(DtbLogListener dtbLogListener) {
        synchronized (listenerLock) {
            logListener = dtbLogListener;
        }
    }

    public static void warn(String str) {
        if (logLevel.intValue() > DTBLogLevel.Warn.intValue() || !androidLogAvailable) {
            return;
        }
        getTag();
    }

    public static void warn(String str, String str2) {
        int intValue = logLevel.intValue();
        DTBLogLevel dTBLogLevel = DTBLogLevel.Warn;
        if (intValue > dTBLogLevel.intValue() || !androidLogAvailable) {
            return;
        }
        postMessageToListener(str, dTBLogLevel, str2);
    }
}
