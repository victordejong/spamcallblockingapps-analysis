package com.google.android.gms.common.util;

import java.util.regex.Pattern;
/* renamed from: com.google.android.gms.common.util.r */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/util/r.class */
public final class C12114r {

    /* renamed from: a */
    private static final Pattern f39637a = Pattern.compile("\\$\\{(.*?)\\}");

    private C12114r() {
    }

    /* renamed from: a */
    public static boolean m19007a(String str) {
        return str == null || str.trim().isEmpty();
    }
}
