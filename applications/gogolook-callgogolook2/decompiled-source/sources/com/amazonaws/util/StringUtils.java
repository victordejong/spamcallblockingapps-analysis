package com.amazonaws.util;

import java.nio.charset.Charset;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/amazonaws/util/StringUtils.class */
public class StringUtils {
    public static final Charset UTF8 = Charset.forName("UTF-8");

    public static String lowerCase(String str) {
        if (str == null) {
            return null;
        }
        return str.isEmpty() ? "" : str.toLowerCase(Locale.ENGLISH);
    }

    public static String upperCase(String str) {
        if (str == null) {
            return null;
        }
        return str.isEmpty() ? "" : str.toUpperCase(Locale.ENGLISH);
    }
}
