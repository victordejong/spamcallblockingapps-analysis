package com.google.gson.internal;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Locale;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes4-dex2jar.jar:com/google/gson/internal/i.class */
public final class i {
    private static String a(int i) {
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
        throw new IllegalArgumentException("Unknown DateFormat style: ".concat(String.valueOf(i)));
    }

    public static DateFormat a(int i, int i2) {
        return new SimpleDateFormat(a(i) + StringUtils.SPACE + b(i2), Locale.US);
    }

    private static String b(int i) {
        if (i == 0 || i == 1) {
            return "h:mm:ss a z";
        }
        if (i == 2) {
            return "h:mm:ss a";
        }
        if (i == 3) {
            return "h:mm a";
        }
        throw new IllegalArgumentException("Unknown DateFormat style: ".concat(String.valueOf(i)));
    }
}
