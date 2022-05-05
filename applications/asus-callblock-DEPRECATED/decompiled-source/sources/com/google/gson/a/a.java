package com.google.gson.a;
/* loaded from: classes-dex2jar.jar:com/google/gson/a/a.class */
public final class a {
    public static <T> T a(T t) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException();
    }

    public static void a(boolean z) {
        if (!z) {
            throw new IllegalArgumentException();
        }
    }
}
