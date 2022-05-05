package com.google.android.gms.common.a;

import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/a/m.class */
public final class m {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f3939a = Pattern.compile("\\$\\{(.*?)\\}");

    public static boolean a(String str) {
        return str == null || com.google.android.gms.common.internal.m.f4020a.a(str);
    }
}
