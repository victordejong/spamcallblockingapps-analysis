package com.google.gson.internal;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Locale;
import org.apache.commons.lang3.StringUtils;
/* renamed from: com.google.gson.internal.i */
/* loaded from: classes4-dex2jar.jar:com/google/gson/internal/i.class */
public final class C16078i {
    /* renamed from: a */
    private static String m7873a(int i) {
        if (i != 0) {
            if (i == 1) {
                return "MMMM d, yyyy";
            }
            if (i == 2) {
                return "MMM d, yyyy";
            }
            if (i != 3) {
                throw new IllegalArgumentException("Unknown DateFormat style: ".concat(String.valueOf(i)));
            }
            return "M/d/yy";
        }
        return "EEEE, MMMM d, yyyy";
    }

    /* renamed from: a */
    public static DateFormat m7872a(int i, int i2) {
        return new SimpleDateFormat(m7873a(i) + StringUtils.SPACE + m7871b(i2), Locale.US);
    }

    /* renamed from: b */
    private static String m7871b(int i) {
        if (i == 0 || i == 1) {
            return "h:mm:ss a z";
        }
        if (i == 2) {
            return "h:mm:ss a";
        }
        if (i != 3) {
            throw new IllegalArgumentException("Unknown DateFormat style: ".concat(String.valueOf(i)));
        }
        return "h:mm a";
    }
}
