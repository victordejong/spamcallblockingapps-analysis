package com.huawei.secure.android.common.util;
/* loaded from: classes3-dex2jar.jar:com/huawei/secure/android/common/util/SafeStringBuffer.class */
public class SafeStringBuffer {

    /* renamed from: a */
    private static final String f8136a = "SafeStringBuffer";

    /* renamed from: b */
    private static final String f8137b = "";

    public static String substring(StringBuffer stringBuffer, int i) {
        if (stringBuffer == null || stringBuffer.length() < i || i < 0) {
            return "";
        }
        try {
            return stringBuffer.substring(i);
        } catch (Exception e) {
            e.getMessage();
            return "";
        }
    }

    public static String substring(StringBuffer stringBuffer, int i, int i2) {
        if (stringBuffer == null || i < 0 || i2 > stringBuffer.length() || i2 < i) {
            return "";
        }
        try {
            return stringBuffer.substring(i, i2);
        } catch (Exception e) {
            e.getMessage();
            return "";
        }
    }
}
