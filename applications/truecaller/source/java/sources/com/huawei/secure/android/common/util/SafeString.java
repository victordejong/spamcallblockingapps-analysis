package com.huawei.secure.android.common.util;
/* loaded from: classes3-dex2jar.jar:com/huawei/secure/android/common/util/SafeString.class */
public class SafeString {

    /* renamed from: a */
    private static final String f8134a = "SafeString";

    /* renamed from: b */
    private static final String f8135b = "";

    public static String replace(String str, CharSequence charSequence, CharSequence charSequence2) {
        if (str != null && charSequence != null && charSequence2 != null) {
            try {
                return str.replace(charSequence, charSequence2);
            } catch (Exception e) {
                e.getMessage();
            }
        }
        return str;
    }

    public static String substring(String str, int i) {
        if (str == null || str.length() < i || i < 0) {
            return "";
        }
        try {
            return str.substring(i);
        } catch (Exception e) {
            e.getMessage();
            return "";
        }
    }

    public static String substring(String str, int i, int i2) {
        if (str == null || i < 0 || i2 > str.length() || i2 < i) {
            return "";
        }
        try {
            return str.substring(i, i2);
        } catch (Exception e) {
            e.getMessage();
            return "";
        }
    }
}
