package com.amazonaws.util;

import java.nio.charset.Charset;
import java.util.Date;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/amazonaws/util/StringUtils.class */
public class StringUtils {

    /* renamed from: a  reason: collision with root package name */
    public static final Charset f6920a = Charset.forName("UTF-8");

    public static String a(Integer num) {
        return Integer.toString(num.intValue());
    }

    public static String a(String str) {
        return str;
    }

    public static String a(Date date) {
        return DateUtils.a(date);
    }

    public static boolean a(CharSequence charSequence) {
        int length;
        if (charSequence == null || (length = charSequence.length()) == 0) {
            return true;
        }
        for (int i = 0; i < length; i++) {
            if (!Character.isWhitespace(charSequence.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    public static String b(String str) {
        if (str == null) {
            return null;
        }
        return str.isEmpty() ? "" : str.toLowerCase(Locale.ENGLISH);
    }

    public static String c(String str) {
        if (str == null) {
            return null;
        }
        return str.isEmpty() ? "" : str.toUpperCase(Locale.ENGLISH);
    }
}
