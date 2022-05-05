package com.tmobile.services.nameid.utility;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.tmobile.services.nameid.model.TmoUserStatus;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/StringParsingUtils.class */
public class StringParsingUtils {
    private StringParsingUtils() {
        throw new IllegalAccessError("This is a utility class, it shouldn't be created");
    }

    /* renamed from: a */
    public static String m5339a(@Nullable String str) {
        if (str == null) {
            return "";
        }
        String replace = str.replace("+", "");
        String str2 = replace;
        if (replace.startsWith(TmoUserStatus.CUSTOMER_TYPE_POSTPAID)) {
            str2 = replace.substring(1);
        }
        int length = str2.length() - 4;
        if (length < 0) {
            length = 0;
        }
        return str2.substring(0, length);
    }

    @NonNull
    /* renamed from: b */
    public static String m5338b(String str) {
        if (str == null || str.isEmpty()) {
            return "";
        }
        String[] split = str.trim().split("\\s+");
        StringBuilder sb = new StringBuilder("");
        int length = split.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            String str2 = split[i];
            int i3 = i2;
            if (!str2.isEmpty()) {
                i3 = i2;
                if (str2.matches("^[a-zA-Z].*$")) {
                    sb.append(Character.toString(str2.charAt(0)).toUpperCase());
                    i3 = i2 + 1;
                }
            }
            if (i3 == 2) {
                break;
            }
            i++;
            i2 = i3;
        }
        return sb.toString();
    }

    /* renamed from: c */
    public static String m5337c(String str) {
        String str2 = str;
        if (str.length() == 11) {
            str2 = str;
            if (str.startsWith(TmoUserStatus.CUSTOMER_TYPE_POSTPAID)) {
                str2 = str.substring(1, str.length());
            }
        }
        return str2;
    }

    /* renamed from: d */
    public static boolean m5336d(@Nullable String str) {
        return str != null && str.matches(".+@.+\\.[a-z]+");
    }

    /* renamed from: e */
    public static boolean m5335e(String str) {
        return str.replaceAll("[0-9]", "").isEmpty();
    }

    /* renamed from: f */
    public static String m5334f(@Nullable String str) {
        String str2 = "";
        if (str == null) {
            return "";
        }
        int length = str.length();
        if (length > 2) {
            str2 = str.substring(1, length - 1);
        }
        return str2;
    }
}
