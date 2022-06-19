package com.huawei.secure.android.common.util;

import android.util.Base64;
/* loaded from: classes3-dex2jar.jar:com/huawei/secure/android/common/util/SafeBase64.class */
public class SafeBase64 {

    /* renamed from: a */
    private static final String f8133a = "SafeBase64";

    private SafeBase64() {
    }

    public static byte[] decode(String str, int i) {
        try {
            return Base64.decode(str, i);
        } catch (Exception e) {
            e.getClass().getSimpleName();
            e.getMessage();
            return new byte[0];
        }
    }

    public static byte[] decode(byte[] bArr, int i) {
        try {
            return Base64.decode(bArr, i);
        } catch (Exception e) {
            e.getClass().getSimpleName();
            e.getMessage();
            return new byte[0];
        }
    }

    public static byte[] decode(byte[] bArr, int i, int i2, int i3) {
        try {
            return Base64.decode(bArr, i, i2, i3);
        } catch (Exception e) {
            e.getClass().getSimpleName();
            e.getMessage();
            return new byte[0];
        }
    }

    public static byte[] encode(byte[] bArr, int i) {
        try {
            return Base64.encode(bArr, i);
        } catch (Exception e) {
            e.getClass().getSimpleName();
            e.getMessage();
            return new byte[0];
        }
    }

    public static byte[] encode(byte[] bArr, int i, int i2, int i3) {
        try {
            return Base64.encode(bArr, i, i2, i3);
        } catch (Exception e) {
            e.getClass().getSimpleName();
            e.getMessage();
            return new byte[0];
        }
    }

    public static String encodeToString(byte[] bArr, int i) {
        try {
            return Base64.encodeToString(bArr, i);
        } catch (Exception e) {
            e.getClass().getSimpleName();
            e.getMessage();
            return "";
        }
    }

    public static String encodeToString(byte[] bArr, int i, int i2, int i3) {
        try {
            return Base64.encodeToString(bArr, i, i2, i3);
        } catch (Exception e) {
            e.getClass().getSimpleName();
            e.getMessage();
            return "";
        }
    }
}
