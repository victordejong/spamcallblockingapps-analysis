package com.facebook.appevents.p039t;

import android.text.TextUtils;
/* renamed from: com.facebook.appevents.t.d */
/* loaded from: classes-dex2jar.jar:com/facebook/appevents/t/d.class */
public class C2359d {
    /* renamed from: a */
    public static String m35035a(String str) {
        return TextUtils.join(" ", str.trim().split("\\s+"));
    }

    /* renamed from: a */
    public static int[] m35034a(String str, int i) {
        int[] iArr = new int[i];
        String a = m35035a(str);
        for (int i2 = 0; i2 < i; i2++) {
            if (i2 < a.length()) {
                iArr[i2] = a.charAt(i2);
            } else {
                iArr[i2] = 0;
            }
        }
        return iArr;
    }
}
