package org.apache.commons.lang3;

import java.util.regex.Pattern;
/* loaded from: classes5-dex2jar.jar:org/apache/commons/lang3/f.class */
public final class f {
    public static String a(String str, String str2, String str3) {
        String str4 = str;
        if (str != null) {
            str4 = str;
            if (str2 != null) {
                str4 = str3 == null ? str : str.replaceAll(str2, str3);
            }
        }
        return str4;
    }

    public static String b(String str, String str2, String str3) {
        String str4 = str;
        if (str != null) {
            str4 = str;
            if (str2 != null) {
                str4 = str3 == null ? str : Pattern.compile(str2, 32).matcher(str).replaceAll(str3);
            }
        }
        return str4;
    }
}
