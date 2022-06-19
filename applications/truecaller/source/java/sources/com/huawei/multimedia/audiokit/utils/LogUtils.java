package com.huawei.multimedia.audiokit.utils;

import java.util.IllegalFormatException;
import java.util.Locale;
import java.util.regex.PatternSyntaxException;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/huawei/multimedia/audiokit/utils/LogUtils.class */
public class LogUtils {
    public static final int DEBUG = 4;
    public static final int ERROR = 1;
    private static final String ERROR_MESSAGE = "log message error : ";
    public static final int INFO = 3;
    public static final int LOG_LEVEL = 6;
    public static final int VERBOSE = 5;
    public static final int WARN = 2;

    private LogUtils() {
    }

    public static void debug(String str, String str2) {
    }

    public static <T> void debug(String str, String str2, T... tArr) {
        if (str2 != null) {
            getMessageString(str2, tArr);
        }
    }

    public static void error(String str, String str2) {
    }

    public static <T> void error(String str, String str2, T... tArr) {
        if (str2 != null) {
            getMessageString(str2, tArr);
        }
    }

    private static <T> String getMessageString(String str, T[] tArr) {
        try {
            return String.format(Locale.ENGLISH, str.replaceAll("\\{\\}", "%s"), tArr);
        } catch (IllegalFormatException | PatternSyntaxException e) {
            StringBuilder m8728C = C22128a.m8728C(ERROR_MESSAGE);
            m8728C.append(e.getMessage());
            return m8728C.toString();
        }
    }

    public static void info(String str, String str2) {
    }

    public static <T> void info(String str, String str2, T... tArr) {
        if (str2 != null) {
            getMessageString(str2, tArr);
        }
    }

    public static void verbose(String str, String str2) {
    }

    public static void warn(String str, String str2) {
    }
}
