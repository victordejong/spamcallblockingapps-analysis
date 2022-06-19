package com.huawei.secure.android.common.util;

import android.text.TextUtils;
/* loaded from: classes3-dex2jar.jar:com/huawei/secure/android/common/util/SafeStringBuilder.class */
public class SafeStringBuilder {

    /* renamed from: a */
    private static final String f8138a = "SafeStringBuilder";

    /* renamed from: b */
    private static final String f8139b = "";

    public static String substring(StringBuilder sb, int i) {
        if (TextUtils.isEmpty(sb) || sb.length() < i || i < 0) {
            return "";
        }
        try {
            return sb.substring(i);
        } catch (Exception e) {
            e.getMessage();
            return "";
        }
    }

    public static String substring(StringBuilder sb, int i, int i2) {
        if (TextUtils.isEmpty(sb) || i < 0 || i2 > sb.length() || i2 < i) {
            return "";
        }
        try {
            return sb.substring(i, i2);
        } catch (Exception e) {
            e.getMessage();
            return "";
        }
    }
}
