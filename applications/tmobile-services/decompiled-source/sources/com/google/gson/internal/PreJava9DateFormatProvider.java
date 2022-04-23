package com.google.gson.internal;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/google/gson/internal/PreJava9DateFormatProvider.class */
public class PreJava9DateFormatProvider {
    /* renamed from: a */
    private static String m8283a(int i) {
        if (i == 0) {
            return "EEEE, MMMM d, yyyy";
        }
        if (i == 1) {
            return "MMMM d, yyyy";
        }
        if (i == 2) {
            return "MMM d, yyyy";
        }
        if (i == 3) {
            return "M/d/yy";
        }
        throw new IllegalArgumentException("Unknown DateFormat style: " + i);
    }

    /* renamed from: b */
    private static String m8282b(int i) {
        if (i == 0 || i == 1) {
            return "h:mm:ss a z";
        }
        if (i == 2) {
            return "h:mm:ss a";
        }
        if (i == 3) {
            return "h:mm a";
        }
        throw new IllegalArgumentException("Unknown DateFormat style: " + i);
    }

    /* renamed from: c */
    public static DateFormat m8281c(int i, int i2) {
        return new SimpleDateFormat(m8283a(i) + " " + m8282b(i2), Locale.US);
    }
}
