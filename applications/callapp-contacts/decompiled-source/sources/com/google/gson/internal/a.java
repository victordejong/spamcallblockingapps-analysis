package com.google.gson.internal;

import java.util.Objects;
/* loaded from: classes4-dex2jar.jar:com/google/gson/internal/a.class */
public final class a {
    private a() {
        throw new UnsupportedOperationException();
    }

    public static <T> T a(T t) {
        Objects.requireNonNull(t);
        return t;
    }

    public static void a(boolean z) {
        if (!z) {
            throw new IllegalArgumentException();
        }
    }
}
