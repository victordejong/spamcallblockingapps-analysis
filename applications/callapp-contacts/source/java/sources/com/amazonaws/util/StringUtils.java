package com.amazonaws.util;

import java.nio.charset.Charset;
import java.util.Date;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/amazonaws/util/StringUtils.class */
public class StringUtils {

    /* renamed from: a */
    public static final Charset f12513a = Charset.forName("UTF-8");

    /* renamed from: a */
    public static String m38230a(Integer num) {
        return Integer.toString(num.intValue());
    }

    /* renamed from: a */
    public static String m38229a(String str) {
        return str;
    }

    /* renamed from: a */
    public static String m38228a(Date date) {
        return DateUtils.m38252a(date);
    }

    /* renamed from: a */
    public static boolean m38231a(CharSequence charSequence) {
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

    /* renamed from: b */
    public static String m38227b(String str) {
        if (str == null) {
            return null;
        }
        return str.isEmpty() ? "" : str.toLowerCase(Locale.ENGLISH);
    }

    /* renamed from: c */
    public static String m38226c(String str) {
        if (str == null) {
            return null;
        }
        return str.isEmpty() ? "" : str.toUpperCase(Locale.ENGLISH);
    }
}
