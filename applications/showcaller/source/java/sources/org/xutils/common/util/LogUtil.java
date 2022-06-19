package org.xutils.common.util;

import android.text.TextUtils;
import android.util.Log;
import java.util.Locale;
import org.xutils.C9682x;
/* loaded from: classes2-dex2jar.jar:org/xutils/common/util/LogUtil.class */
public class LogUtil {
    public static String customTagPrefix = "x_log";

    private LogUtil() {
    }

    /* renamed from: a */
    private static String m262a() {
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[2];
        String className = stackTraceElement.getClassName();
        String format = String.format(Locale.getDefault(), "%s.%s(L:%d)", className.substring(className.lastIndexOf(".") + 1), stackTraceElement.getMethodName(), Integer.valueOf(stackTraceElement.getLineNumber()));
        if (!TextUtils.isEmpty(customTagPrefix)) {
            format = customTagPrefix + ":" + format;
        }
        return format;
    }

    /* renamed from: d */
    public static void m261d(String str) {
        if (!C9682x.isDebug() || TextUtils.isEmpty(str)) {
            return;
        }
        Log.d(m262a(), str);
    }

    /* renamed from: d */
    public static void m260d(String str, Throwable th) {
        if (!C9682x.isDebug() || TextUtils.isEmpty(str)) {
            return;
        }
        Log.d(m262a(), str, th);
    }

    /* renamed from: e */
    public static void m259e(String str) {
        if (!C9682x.isDebug() || TextUtils.isEmpty(str)) {
            return;
        }
        Log.e(m262a(), str);
    }

    /* renamed from: e */
    public static void m258e(String str, Throwable th) {
        if (!C9682x.isDebug() || TextUtils.isEmpty(str)) {
            return;
        }
        Log.e(m262a(), str, th);
    }

    /* renamed from: i */
    public static void m257i(String str) {
        if (!C9682x.isDebug() || TextUtils.isEmpty(str)) {
            return;
        }
        Log.i(m262a(), str);
    }

    /* renamed from: i */
    public static void m256i(String str, Throwable th) {
        if (!C9682x.isDebug() || TextUtils.isEmpty(str)) {
            return;
        }
        Log.i(m262a(), str, th);
    }

    /* renamed from: v */
    public static void m255v(String str) {
        if (!C9682x.isDebug() || TextUtils.isEmpty(str)) {
            return;
        }
        Log.v(m262a(), str);
    }

    /* renamed from: v */
    public static void m254v(String str, Throwable th) {
        if (!C9682x.isDebug() || TextUtils.isEmpty(str)) {
            return;
        }
        Log.v(m262a(), str, th);
    }

    /* renamed from: w */
    public static void m253w(String str) {
        if (!C9682x.isDebug() || TextUtils.isEmpty(str)) {
            return;
        }
        Log.w(m262a(), str);
    }

    /* renamed from: w */
    public static void m252w(String str, Throwable th) {
        if (!C9682x.isDebug() || TextUtils.isEmpty(str)) {
            return;
        }
        Log.w(m262a(), str, th);
    }

    /* renamed from: w */
    public static void m251w(Throwable th) {
        if (!C9682x.isDebug()) {
            return;
        }
        Log.w(m262a(), th);
    }

    public static void wtf(String str) {
        if (!C9682x.isDebug() || TextUtils.isEmpty(str)) {
            return;
        }
        Log.wtf(m262a(), str);
    }

    public static void wtf(String str, Throwable th) {
        if (!C9682x.isDebug() || TextUtils.isEmpty(str)) {
            return;
        }
        Log.wtf(m262a(), str, th);
    }

    public static void wtf(Throwable th) {
        if (!C9682x.isDebug()) {
            return;
        }
        Log.wtf(m262a(), th);
    }
}
