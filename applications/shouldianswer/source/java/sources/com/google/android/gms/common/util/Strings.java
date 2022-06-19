package com.google.android.gms.common.util;

import android.text.TextUtils;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/Strings.class */
public class Strings {
    private static final Pattern zzhh = Pattern.compile("\\$\\{(.*?)\\}");

    private Strings() {
    }

    public static String emptyToNull(String str) {
        String str2 = str;
        if (TextUtils.isEmpty(str)) {
            str2 = null;
        }
        return str2;
    }

    public static boolean isEmptyOrWhitespace(String str) {
        return str == null || str.trim().isEmpty();
    }
}
