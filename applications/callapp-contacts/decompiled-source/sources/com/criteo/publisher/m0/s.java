package com.criteo.publisher.m0;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/m0/s.class */
public final class s {
    public static String a(String str) {
        if (str.isEmpty()) {
            str = null;
        }
        return str;
    }

    public static boolean a(CharSequence charSequence) {
        return charSequence == null || charSequence.length() == 0;
    }
}
