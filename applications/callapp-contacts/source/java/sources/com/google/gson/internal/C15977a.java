package com.google.gson.internal;

import java.util.Objects;
/* renamed from: com.google.gson.internal.a */
/* loaded from: classes4-dex2jar.jar:com/google/gson/internal/a.class */
public final class C15977a {
    private C15977a() {
        throw new UnsupportedOperationException();
    }

    /* renamed from: a */
    public static <T> T m7955a(T t) {
        Objects.requireNonNull(t);
        return t;
    }

    /* renamed from: a */
    public static void m7954a(boolean z) {
        if (z) {
            return;
        }
        throw new IllegalArgumentException();
    }
}
