package com.google.android.datatransport.runtime.a.a;

import java.util.Objects;
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/a/a/e.class */
public final class e {
    private e() {
    }

    public static <T> T a(T t) {
        Objects.requireNonNull(t);
        return t;
    }

    public static <T> T a(T t, String str) {
        Objects.requireNonNull(t, str);
        return t;
    }
}
