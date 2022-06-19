package com.bytedance.sdk.openadsdk.preload.p193a.p195b;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Locale;
import org.apache.commons.lang3.StringUtils;
/* renamed from: com.bytedance.sdk.openadsdk.preload.a.b.j */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/b/j.class */
public class C5225j {
    /* renamed from: a */
    private static String m32818a(int i) {
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
    public static DateFormat m32817a(int i, int i2) {
        return new SimpleDateFormat(m32818a(i) + StringUtils.SPACE + m32816b(i2), Locale.US);
    }

    /* renamed from: b */
    private static String m32816b(int i) {
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
