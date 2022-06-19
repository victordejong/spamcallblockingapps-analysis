package com.google.gson.internal;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Locale;
/* loaded from: classes2-dex2jar.jar:com/google/gson/internal/PreJava9DateFormatProvider.class */
public class PreJava9DateFormatProvider {
    private static String getDateFormatPattern(int i) {
        if (i != 0) {
            if (i == 1) {
                return "MMMM d, y";
            }
            if (i == 2) {
                return "MMM d, y";
            }
            if (i == 3) {
                return "M/d/yy";
            }
            throw new IllegalArgumentException("Unknown DateFormat style: " + i);
        }
        return "EEEE, MMMM d, y";
    }

    private static String getDatePartOfDateTimePattern(int i) {
        if (i != 0) {
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
        return "EEEE, MMMM d, yyyy";
    }

    private static String getTimePartOfDateTimePattern(int i) {
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

    public static DateFormat getUSDateFormat(int i) {
        return new SimpleDateFormat(getDateFormatPattern(i), Locale.US);
    }

    public static DateFormat getUSDateTimeFormat(int i, int i2) {
        return new SimpleDateFormat(getDatePartOfDateTimePattern(i) + " " + getTimePartOfDateTimePattern(i2), Locale.US);
    }
}
