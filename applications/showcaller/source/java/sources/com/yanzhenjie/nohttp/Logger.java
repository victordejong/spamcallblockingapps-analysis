package com.yanzhenjie.nohttp;

import android.util.Log;
import java.io.PrintStream;
import java.lang.reflect.Method;
/* loaded from: classes2-dex2jar.jar:com/yanzhenjie/nohttp/Logger.class */
public class Logger {

    /* renamed from: D */
    private static final String f40304D = "d";

    /* renamed from: E */
    private static final String f40305E = "e";

    /* renamed from: I */
    private static final String f40306I = "i";
    private static final int MAX_LENGTH = 3000;
    private static boolean SDebug = false;
    private static String STag = "NoHttp";

    /* renamed from: V */
    private static final String f40307V = "v";

    /* renamed from: W */
    private static final String f40308W = "w";
    private static final String WTF = "wtf";

    /* renamed from: d */
    public static void m570d(Object obj) {
        print(f40304D, obj);
    }

    /* renamed from: d */
    public static void m569d(Throwable th) {
        m568d(th, "");
    }

    /* renamed from: d */
    public static void m568d(Throwable th, Object obj) {
        print(f40304D, obj, th);
    }

    /* renamed from: e */
    public static void m567e(Object obj) {
        print(f40305E, obj);
    }

    /* renamed from: e */
    public static void m566e(Throwable th) {
        m565e(th, "");
    }

    /* renamed from: e */
    public static void m565e(Throwable th, String str) {
        print(f40305E, str, th);
    }

    /* renamed from: i */
    public static void m564i(Object obj) {
        print(f40306I, obj);
    }

    /* renamed from: i */
    public static void m563i(Throwable th) {
        m562i(th, "");
    }

    /* renamed from: i */
    public static void m562i(Throwable th, Object obj) {
        print(f40306I, obj, th);
    }

    private static void invokePrint(String str, String str2, String str3) {
        try {
            Method method = Log.class.getMethod(str, String.class, String.class);
            method.setAccessible(true);
            method.invoke(null, str2, str3);
        } catch (Exception e) {
            PrintStream printStream = System.out;
            printStream.println(str2 + ": " + str3);
        }
    }

    private static void invokePrint(String str, String str2, String str3, Throwable th) {
        if (SDebug) {
            try {
                Method method = Log.class.getMethod(str, String.class, String.class, Throwable.class);
                method.setAccessible(true);
                method.invoke(null, str2, str3, th);
            } catch (Exception e) {
                PrintStream printStream = System.out;
                printStream.println(str2 + ": " + str3);
            }
        }
    }

    private static void print(String str, Object obj) {
        print(str, STag, toString(obj));
    }

    private static void print(String str, Object obj, Throwable th) {
        print(str, STag, toString(obj), th);
    }

    private static void print(String str, String str2, String str3) {
        if (SDebug) {
            int length = str3.length();
            if (length == 0) {
                invokePrint(str, str2, str3);
                return;
            }
            int i = 0;
            while (true) {
                if (i >= (length / MAX_LENGTH) + (length % MAX_LENGTH > 0 ? 1 : 0)) {
                    return;
                }
                i++;
                int i2 = i * MAX_LENGTH;
                if (length >= i2) {
                    invokePrint(str, str2, str3.substring(i2 - MAX_LENGTH, i2));
                } else {
                    invokePrint(str, str2, str3.substring(i2 - MAX_LENGTH));
                }
            }
        }
    }

    private static void print(String str, String str2, String str3, Throwable th) {
        invokePrint(str, str2, str3, th);
    }

    public static void setDebug(boolean z) {
        SDebug = z;
    }

    public static void setTag(String str) {
        STag = str;
    }

    private static String toString(Object obj) {
        return obj == null ? "null" : obj.toString();
    }

    /* renamed from: v */
    public static void m561v(Object obj) {
        print(f40307V, obj);
    }

    /* renamed from: v */
    public static void m560v(Throwable th) {
        m559v(th, "");
    }

    /* renamed from: v */
    public static void m559v(Throwable th, Object obj) {
        print(f40307V, obj, th);
    }

    /* renamed from: w */
    public static void m558w(String str) {
        print(f40308W, str);
    }

    /* renamed from: w */
    public static void m557w(Throwable th) {
        m556w(th, "");
    }

    /* renamed from: w */
    public static void m556w(Throwable th, String str) {
        print(f40308W, str, th);
    }

    public static void wtf(String str) {
        print(WTF, str);
    }

    public static void wtf(Throwable th) {
        wtf(th, "");
    }

    public static void wtf(Throwable th, String str) {
        print(WTF, str, th);
    }
}
