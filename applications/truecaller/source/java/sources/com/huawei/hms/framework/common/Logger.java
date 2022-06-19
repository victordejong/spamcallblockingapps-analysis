package com.huawei.hms.framework.common;

import android.text.TextUtils;
import android.util.Log;
import com.razorpay.AnalyticsConstants;
import java.io.IOException;
import java.util.Arrays;
import java.util.IllegalFormatException;
import org.json.JSONException;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/framework/common/Logger.class */
public class Logger {
    private static final boolean DEBUG = false;
    private static final int MAX_STACK_DEEP_LENGTH = 20;
    private static final int MAX_STACK_DEEP_LENGTH_NORMAL = 8;
    private static final String SPLIT = "|";
    private static final String TAG = "NetworkKit_Logger";
    private static final String TAG_NETWORKKIT_PRE = "NetworkKit_";
    private static final String TAG_NETWORK_SDK_PRE = "NetworkSdk_";
    private static ExtLogger extLogger;
    private static boolean kitPrint = true;

    /* loaded from: classes3-dex2jar.jar:com/huawei/hms/framework/common/Logger$ThrowableWrapper.class */
    public static class ThrowableWrapper extends Throwable {
        private static final long serialVersionUID = 7129050843360571879L;
        private String message;
        private Throwable ownerThrowable;
        private Throwable thisCause;

        private ThrowableWrapper(Throwable th) {
            this.ownerThrowable = th;
            StackTraceElement[] stackTrace = th.getStackTrace();
            int i = ((th instanceof IOException) || (th instanceof JSONException)) ? 8 : 20;
            if (stackTrace.length > i) {
                setStackTrace((StackTraceElement[]) Arrays.copyOf(stackTrace, i));
            } else {
                setStackTrace(stackTrace);
            }
            setMessage(StringUtils.anonymizeMessage(th.getMessage()));
        }

        public void setCause(Throwable th) {
            this.thisCause = th;
        }

        @Override // java.lang.Throwable
        public Throwable getCause() {
            Throwable th = this.thisCause;
            Throwable th2 = th;
            if (th == this) {
                th2 = null;
            }
            return th2;
        }

        @Override // java.lang.Throwable
        public String getMessage() {
            return this.message;
        }

        public void setMessage(String str) {
            this.message = str;
        }

        @Override // java.lang.Throwable
        public String toString() {
            Throwable th = this.ownerThrowable;
            if (th == null) {
                return "";
            }
            String name = th.getClass().getName();
            String str = name;
            if (this.message != null) {
                String m8543z2 = C22128a.m8543z2(name, ": ");
                if (this.message.startsWith(m8543z2)) {
                    return this.message;
                }
                StringBuilder m8728C = C22128a.m8728C(m8543z2);
                m8728C.append(this.message);
                str = m8728C.toString();
            }
            return str;
        }
    }

    private static String complexAppTag(String str) {
        return C22128a.m8543z2(TAG_NETWORK_SDK_PRE, str);
    }

    private static String complexMsg(String str, int i) {
        return !TextUtils.isEmpty(str) ? C22128a.m8610j(new StringBuilder(), getCallMethodInfo(i), "|", str) : getCallMethodInfo(i);
    }

    private static String complexTag(String str) {
        return C22128a.m8543z2(TAG_NETWORKKIT_PRE, str);
    }

    /* renamed from: d */
    public static void m38049d(String str, Object obj) {
        println(3, str, obj);
    }

    /* renamed from: d */
    public static void m38048d(String str, String str2, Object... objArr) {
        println(3, str, str2, objArr);
    }

    /* renamed from: e */
    public static void m38047e(String str, Object obj) {
        println(6, str, obj);
    }

    /* renamed from: e */
    public static void m38046e(String str, String str2, Throwable th) {
        if (isAPPLoggable(6)) {
            extLogger.m38054e(complexAppTag(str), complexMsg(str2, 5), getNewThrowable(th));
        }
        if (kitPrint) {
            complexTag(str);
            complexMsg(str2, 5);
            getNewThrowable(th);
        }
    }

    /* renamed from: e */
    public static void m38045e(String str, String str2, Object... objArr) {
        println(6, str, str2, objArr);
    }

    private static void extLogPrintln(int i, String str, String str2) {
        if (i == 2) {
            extLogger.m38052v(str, str2);
        } else if (i == 3) {
            extLogger.m38056d(str, str2);
        } else if (i == 4) {
            extLogger.m38053i(str, str2);
        } else if (i == 5) {
            extLogger.m38051w(str, str2);
        } else if (i != 6) {
        } else {
            extLogger.m38055e(str, str2);
        }
    }

    private static String getCallMethodInfo(int i) {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        if (stackTrace.length > i) {
            StackTraceElement stackTraceElement = stackTrace[i];
            return Thread.currentThread().getName() + "|" + stackTraceElement.getFileName() + "|" + stackTraceElement.getClassName() + "|" + stackTraceElement.getMethodName() + "|" + stackTraceElement.getLineNumber();
        }
        return "";
    }

    private static Throwable getNewThrowable(Throwable th) {
        if (isLoggable(3)) {
            return th;
        }
        if (th == null) {
            return null;
        }
        ThrowableWrapper throwableWrapper = new ThrowableWrapper(th);
        Throwable cause = th.getCause();
        ThrowableWrapper throwableWrapper2 = throwableWrapper;
        while (true) {
            ThrowableWrapper throwableWrapper3 = throwableWrapper2;
            if (cause == null) {
                return throwableWrapper;
            }
            ThrowableWrapper throwableWrapper4 = new ThrowableWrapper(cause);
            throwableWrapper3.setCause(throwableWrapper4);
            cause = cause.getCause();
            throwableWrapper2 = throwableWrapper4;
        }
    }

    /* renamed from: i */
    public static void m38044i(String str, Object obj) {
        println(4, str, obj);
    }

    /* renamed from: i */
    public static void m38043i(String str, String str2, Object... objArr) {
        println(4, str, str2, objArr);
    }

    public static boolean isAPPLoggable(int i) {
        if (extLogger != null) {
            return Log.isLoggable(TAG_NETWORK_SDK_PRE, i);
        }
        return false;
    }

    public static boolean isLoggable(int i) {
        return Log.isLoggable(TAG_NETWORKKIT_PRE, i);
    }

    private static int logPrintln(int i, String str, String str2) {
        if (isAPPLoggable(i)) {
            extLogPrintln(i, complexAppTag(str), complexMsg(str2, 7));
        }
        if (kitPrint) {
            return Log.println(i, complexTag(str), complexMsg(str2, 7));
        }
        return 1;
    }

    public static void println(int i, String str, Object obj) {
        if (i >= 3 && isLoggable(i)) {
            logPrintln(i, str, obj == null ? AnalyticsConstants.NULL : obj.toString());
        }
    }

    public static void println(int i, String str, String str2, Object... objArr) {
        if (i >= 3 && str2 != null) {
            try {
                if (!isLoggable(i)) {
                    return;
                }
                logPrintln(i, str, StringUtils.format(str2, objArr));
            } catch (IllegalFormatException e) {
                m38039w(TAG, "log format error" + str2, e);
            }
        }
    }

    public static void setExtLogger(ExtLogger extLogger2, boolean z) {
        extLogger = extLogger2;
        kitPrint = z;
        m38044i(TAG, "logger = " + extLogger2 + z);
    }

    /* renamed from: v */
    public static void m38042v(String str, Object obj) {
        println(2, str, obj);
    }

    /* renamed from: v */
    public static void m38041v(String str, String str2, Object... objArr) {
        println(2, str, str2, objArr);
    }

    /* renamed from: w */
    public static void m38040w(String str, Object obj) {
        println(5, str, obj);
    }

    /* renamed from: w */
    public static void m38039w(String str, String str2, Throwable th) {
        if (isAPPLoggable(5)) {
            extLogger.m38050w(complexAppTag(str), complexMsg(str2, 5), getNewThrowable(th));
        }
        if (kitPrint) {
            complexTag(str);
            complexMsg(str2, 5);
            getNewThrowable(th);
        }
    }

    /* renamed from: w */
    public static void m38038w(String str, String str2, Object... objArr) {
        println(5, str, str2, objArr);
    }
}
