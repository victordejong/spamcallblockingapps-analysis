package com.huawei.secure.android.common.util;

import android.text.TextUtils;
import com.tenor.android.core.constant.StringConstant;
/* loaded from: classes3-dex2jar.jar:com/huawei/secure/android/common/util/SafePrintException.class */
public abstract class SafePrintException {
    /* renamed from: a */
    private static boolean m36901a(String str) {
        for (int i = 0; i < 10; i++) {
            if (str.contains(new String[]{"java.io.FileNotFoundException", "java.util.jar.JarException", "java.util.MissingResourceException", "java.security.acl.NotOwnerException", "java.util.ConcurrentModificationException", "javax.naming.InsufficientResourcesException", "java.net.BindException", "java.lang.OutOfMemoryError", "java.lang.StackOverflowError", "java.sql.SQLException"}[i])) {
                return true;
            }
        }
        return false;
    }

    public static String getStackTrace(String str, Throwable th) {
        StringBuilder sb = new StringBuilder();
        if (!TextUtils.isEmpty(str)) {
            sb.append(str);
            sb.append(StringConstant.SPACE);
        }
        sb.append("Exception: ");
        sb.append(th.getClass().getName());
        sb.append('\n');
        if (!m36901a(th.getClass().getCanonicalName())) {
            StackTraceElement[] stackTrace = th.getStackTrace();
            if (stackTrace == null) {
                sb.append("Stack trace is NULL!");
                sb.append('\n');
            } else {
                for (StackTraceElement stackTraceElement : stackTrace) {
                    sb.append(stackTraceElement.toString());
                    sb.append('\n');
                }
            }
        }
        return sb.toString();
    }

    public static void print(String str, String str2, Throwable th) {
        if (th == null) {
            return;
        }
        getStackTrace(str2, th);
    }
}
