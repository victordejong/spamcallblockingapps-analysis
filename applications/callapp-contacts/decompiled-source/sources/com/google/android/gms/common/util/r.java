package com.google.android.gms.common.util;

import java.util.regex.Pattern;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/util/r.class */
public final class r {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f22951a = Pattern.compile("\\$\\{(.*?)\\}");

    private r() {
    }

    public static boolean a(String str) {
        return str == null || str.trim().isEmpty();
    }
}
