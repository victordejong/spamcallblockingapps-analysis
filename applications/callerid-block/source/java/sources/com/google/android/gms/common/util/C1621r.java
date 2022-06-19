package com.google.android.gms.common.util;

import java.util.regex.Pattern;
/* renamed from: com.google.android.gms.common.util.r */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/r.class */
public class C1621r {
    static {
        Pattern.compile("\\$\\{(.*?)\\}");
    }

    /* renamed from: a */
    public static boolean m8201a(String str) {
        return str == null || str.trim().isEmpty();
    }
}
