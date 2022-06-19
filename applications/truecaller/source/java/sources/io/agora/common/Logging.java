package io.agora.common;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.net.UnknownHostException;
/* loaded from: classes16-dex2jar.jar:io/agora/common/Logging.class */
public class Logging {
    private static final int LOG_DEBUG = 2048;
    private static final int LOG_ERROR = 4;
    private static final int LOG_INFO = 1;
    private static final int LOG_WARN = 2;

    /* renamed from: d */
    public static void m3721d(String str) {
        AgoraServiceJNI.nativeLog(2048, str);
    }

    /* renamed from: d */
    public static void m3720d(String str, String str2) {
        log(2048, str, str2);
    }

    public static String desensetize(String str) {
        if (str == null) {
            return null;
        }
        int i = 2;
        if (str.length() <= 4) {
            i = 0;
        }
        char[] charArray = str.toCharArray();
        for (int i2 = 0; i2 < charArray.length; i2++) {
            if (i2 >= i && i2 < charArray.length - i) {
                charArray[i2] = (char) 42;
            }
        }
        return String.valueOf(charArray);
    }

    /* renamed from: e */
    public static void m3719e(String str) {
        AgoraServiceJNI.nativeLog(4, str);
    }

    /* renamed from: e */
    public static void m3718e(String str, String str2) {
        log(4, str, str2);
    }

    /* renamed from: e */
    public static void m3717e(String str, String str2, Throwable th) {
        log(4, str, str2);
        log(4, str, th.toString());
        log(4, str, getStackTraceString(th));
    }

    public static String getStackTraceString(Throwable th) {
        if (th == null) {
            return "";
        }
        Throwable th2 = th;
        while (true) {
            Throwable th3 = th2;
            if (th3 == null) {
                StringWriter stringWriter = new StringWriter();
                PrintWriter printWriter = new PrintWriter(stringWriter);
                th.printStackTrace(printWriter);
                printWriter.flush();
                return stringWriter.toString();
            } else if (th3 instanceof UnknownHostException) {
                return "";
            } else {
                th2 = th3.getCause();
            }
        }
    }

    /* renamed from: i */
    public static void m3716i(String str) {
        AgoraServiceJNI.nativeLog(1, str);
    }

    /* renamed from: i */
    public static void m3715i(String str, String str2) {
        log(1, str, str2);
    }

    public static void log(int i, String str, String str2) {
        AgoraServiceJNI.nativeLog(i, "[" + str + "] " + str2);
    }

    /* renamed from: w */
    public static void m3714w(String str) {
        AgoraServiceJNI.nativeLog(2, str);
    }

    /* renamed from: w */
    public static void m3713w(String str, String str2) {
        log(2, str, str2);
    }
}
