package com.facebook.stetho.common;

import android.util.Log;
import java.io.PrintWriter;
import java.io.StringWriter;
import org.apache.commons.p018io.IOUtils;
/* loaded from: classes-dex2jar.jar:com/facebook/stetho/common/LogRedirector.class */
public class LogRedirector {
    private static volatile Logger sLogger;

    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/common/LogRedirector$Logger.class */
    public interface Logger {
        boolean isLoggable(String str, int i);

        void log(int i, String str, String str2);
    }

    /* renamed from: d */
    public static void m387d(String str, String str2) {
        log(3, str, str2);
    }

    /* renamed from: d */
    public static void m386d(String str, String str2, Throwable th) {
        m387d(str, str2 + IOUtils.LINE_SEPARATOR_UNIX + formatThrowable(th));
    }

    /* renamed from: e */
    public static void m385e(String str, String str2) {
        log(6, str, str2);
    }

    /* renamed from: e */
    public static void m384e(String str, String str2, Throwable th) {
        m385e(str, str2 + IOUtils.LINE_SEPARATOR_UNIX + formatThrowable(th));
    }

    private static String formatThrowable(Throwable th) {
        StringWriter stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter(stringWriter);
        th.printStackTrace();
        printWriter.flush();
        return stringWriter.toString();
    }

    /* renamed from: i */
    public static void m383i(String str, String str2) {
        log(4, str, str2);
    }

    /* renamed from: i */
    public static void m382i(String str, String str2, Throwable th) {
        m383i(str, str2 + IOUtils.LINE_SEPARATOR_UNIX + formatThrowable(th));
    }

    public static boolean isLoggable(String str, int i) {
        Logger logger = sLogger;
        return logger != null ? logger.isLoggable(str, i) : Log.isLoggable(str, i);
    }

    private static void log(int i, String str, String str2) {
        Logger logger = sLogger;
        if (logger != null) {
            logger.log(i, str, str2);
        } else {
            Log.println(i, str, str2);
        }
    }

    public static void setLogger(Logger logger) {
        Util.throwIfNull(logger);
        Util.throwIfNotNull(sLogger);
        sLogger = logger;
    }

    /* renamed from: v */
    public static void m381v(String str, String str2) {
        log(2, str, str2);
    }

    /* renamed from: v */
    public static void m380v(String str, String str2, Throwable th) {
        m381v(str, str2 + IOUtils.LINE_SEPARATOR_UNIX + formatThrowable(th));
    }

    /* renamed from: w */
    public static void m379w(String str, String str2) {
        log(5, str, str2);
    }

    /* renamed from: w */
    public static void m378w(String str, String str2, Throwable th) {
        m379w(str, str2 + IOUtils.LINE_SEPARATOR_UNIX + formatThrowable(th));
    }
}
