package com.lidroid.xutils.util;

import android.text.TextUtils;
import android.util.Log;
/* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/util/LogUtils.class */
public class LogUtils {
    public static boolean allowD = true;
    public static boolean allowE = true;
    public static boolean allowI = true;
    public static boolean allowV = true;
    public static boolean allowW = true;
    public static boolean allowWtf = true;
    public static CustomLogger customLogger;
    public static String customTagPrefix = "";

    /* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/util/LogUtils$CustomLogger.class */
    public interface CustomLogger {
        /* renamed from: d */
        void m2000d(String str, String str2);

        /* renamed from: d */
        void m1999d(String str, String str2, Throwable th);

        /* renamed from: e */
        void m1998e(String str, String str2);

        /* renamed from: e */
        void m1997e(String str, String str2, Throwable th);

        /* renamed from: i */
        void m1996i(String str, String str2);

        /* renamed from: i */
        void m1995i(String str, String str2, Throwable th);

        /* renamed from: v */
        void m1994v(String str, String str2);

        /* renamed from: v */
        void m1993v(String str, String str2, Throwable th);

        /* renamed from: w */
        void m1992w(String str, String str2);

        /* renamed from: w */
        void m1991w(String str, String str2, Throwable th);

        /* renamed from: w */
        void m1990w(String str, Throwable th);

        void wtf(String str, String str2);

        void wtf(String str, String str2, Throwable th);

        void wtf(String str, Throwable th);
    }

    private LogUtils() {
    }

    /* renamed from: d */
    public static void m2011d(String str) {
        if (allowD) {
            String generateTag = generateTag(OtherUtils.getCallerStackTraceElement());
            CustomLogger customLogger2 = customLogger;
            if (customLogger2 != null) {
                customLogger2.m2000d(generateTag, str);
            } else {
                Log.d(generateTag, str);
            }
        }
    }

    /* renamed from: d */
    public static void m2010d(String str, Throwable th) {
        if (allowD) {
            String generateTag = generateTag(OtherUtils.getCallerStackTraceElement());
            CustomLogger customLogger2 = customLogger;
            if (customLogger2 != null) {
                customLogger2.m1999d(generateTag, str, th);
            } else {
                Log.d(generateTag, str, th);
            }
        }
    }

    /* renamed from: e */
    public static void m2009e(String str) {
        if (allowE) {
            String generateTag = generateTag(OtherUtils.getCallerStackTraceElement());
            CustomLogger customLogger2 = customLogger;
            if (customLogger2 != null) {
                customLogger2.m1998e(generateTag, str);
            } else {
                Log.e(generateTag, str);
            }
        }
    }

    /* renamed from: e */
    public static void m2008e(String str, Throwable th) {
        if (allowE) {
            String generateTag = generateTag(OtherUtils.getCallerStackTraceElement());
            CustomLogger customLogger2 = customLogger;
            if (customLogger2 != null) {
                customLogger2.m1997e(generateTag, str, th);
            } else {
                Log.e(generateTag, str, th);
            }
        }
    }

    private static String generateTag(StackTraceElement stackTraceElement) {
        String className = stackTraceElement.getClassName();
        String format = String.format("%s.%s(L:%d)", className.substring(className.lastIndexOf(".") + 1), stackTraceElement.getMethodName(), Integer.valueOf(stackTraceElement.getLineNumber()));
        if (!TextUtils.isEmpty(customTagPrefix)) {
            format = customTagPrefix + ":" + format;
        }
        return format;
    }

    /* renamed from: i */
    public static void m2007i(String str) {
        if (allowI) {
            String generateTag = generateTag(OtherUtils.getCallerStackTraceElement());
            CustomLogger customLogger2 = customLogger;
            if (customLogger2 != null) {
                customLogger2.m1996i(generateTag, str);
            } else {
                Log.i(generateTag, str);
            }
        }
    }

    /* renamed from: i */
    public static void m2006i(String str, Throwable th) {
        if (allowI) {
            String generateTag = generateTag(OtherUtils.getCallerStackTraceElement());
            CustomLogger customLogger2 = customLogger;
            if (customLogger2 != null) {
                customLogger2.m1995i(generateTag, str, th);
            } else {
                Log.i(generateTag, str, th);
            }
        }
    }

    /* renamed from: v */
    public static void m2005v(String str) {
        if (allowV) {
            String generateTag = generateTag(OtherUtils.getCallerStackTraceElement());
            CustomLogger customLogger2 = customLogger;
            if (customLogger2 != null) {
                customLogger2.m1994v(generateTag, str);
            } else {
                Log.v(generateTag, str);
            }
        }
    }

    /* renamed from: v */
    public static void m2004v(String str, Throwable th) {
        if (allowV) {
            String generateTag = generateTag(OtherUtils.getCallerStackTraceElement());
            CustomLogger customLogger2 = customLogger;
            if (customLogger2 != null) {
                customLogger2.m1993v(generateTag, str, th);
            } else {
                Log.v(generateTag, str, th);
            }
        }
    }

    /* renamed from: w */
    public static void m2003w(String str) {
        if (allowW) {
            String generateTag = generateTag(OtherUtils.getCallerStackTraceElement());
            CustomLogger customLogger2 = customLogger;
            if (customLogger2 != null) {
                customLogger2.m1992w(generateTag, str);
            } else {
                Log.w(generateTag, str);
            }
        }
    }

    /* renamed from: w */
    public static void m2002w(String str, Throwable th) {
        if (allowW) {
            String generateTag = generateTag(OtherUtils.getCallerStackTraceElement());
            CustomLogger customLogger2 = customLogger;
            if (customLogger2 != null) {
                customLogger2.m1991w(generateTag, str, th);
            } else {
                Log.w(generateTag, str, th);
            }
        }
    }

    /* renamed from: w */
    public static void m2001w(Throwable th) {
        if (allowW) {
            String generateTag = generateTag(OtherUtils.getCallerStackTraceElement());
            CustomLogger customLogger2 = customLogger;
            if (customLogger2 != null) {
                customLogger2.m1990w(generateTag, th);
            } else {
                Log.w(generateTag, th);
            }
        }
    }

    public static void wtf(String str) {
        if (allowWtf) {
            String generateTag = generateTag(OtherUtils.getCallerStackTraceElement());
            CustomLogger customLogger2 = customLogger;
            if (customLogger2 != null) {
                customLogger2.wtf(generateTag, str);
            } else {
                Log.wtf(generateTag, str);
            }
        }
    }

    public static void wtf(String str, Throwable th) {
        if (allowWtf) {
            String generateTag = generateTag(OtherUtils.getCallerStackTraceElement());
            CustomLogger customLogger2 = customLogger;
            if (customLogger2 != null) {
                customLogger2.wtf(generateTag, str, th);
            } else {
                Log.wtf(generateTag, str, th);
            }
        }
    }

    public static void wtf(Throwable th) {
        if (allowWtf) {
            String generateTag = generateTag(OtherUtils.getCallerStackTraceElement());
            CustomLogger customLogger2 = customLogger;
            if (customLogger2 != null) {
                customLogger2.wtf(generateTag, th);
            } else {
                Log.wtf(generateTag, th);
            }
        }
    }
}
