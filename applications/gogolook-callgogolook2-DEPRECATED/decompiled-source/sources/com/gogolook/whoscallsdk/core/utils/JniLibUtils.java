package com.gogolook.whoscallsdk.core.utils;
/* loaded from: classes2-dex2jar.jar:com/gogolook/whoscallsdk/core/utils/JniLibUtils.class */
public class JniLibUtils {

    /* renamed from: a */
    public static byte[] f6162a;

    static {
        System.loadLibrary("native-lib");
    }

    /* renamed from: a */
    public static byte[] m32218a(int i) {
        if (f6162a == null) {
            f6162a = getIV(i);
        }
        return f6162a;
    }

    public static native byte[] getIV(int i);

    public static native String getOriginalKey();

    public static native String getPrefsKey();
}
