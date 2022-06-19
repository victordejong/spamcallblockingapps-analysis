package com.facebook.p094a.p100e;

import android.text.TextUtils;
import java.nio.charset.Charset;
/* renamed from: com.facebook.a.e.d */
/* loaded from: classes-dex2jar.jar:com/facebook/a/e/d.class */
public class C1898d {
    /* renamed from: a */
    static String m15948a(String str) {
        return TextUtils.join(" ", str.trim().split("\\s+"));
    }

    /* renamed from: a */
    public static int[] m15947a(String str, int i) {
        int[] iArr = new int[i];
        byte[] bytes = m15948a(str).getBytes(Charset.forName("UTF-8"));
        for (int i2 = 0; i2 < i; i2++) {
            if (i2 < bytes.length) {
                iArr[i2] = bytes[i2] & 255;
            } else {
                iArr[i2] = 0;
            }
        }
        return iArr;
    }
}
