package com.google.gson.internal;

import java.util.Objects;
/* renamed from: com.google.gson.internal.$Gson$Preconditions */
/* loaded from: classes2-dex2jar.jar:com/google/gson/internal/$Gson$Preconditions.class */
public final class C$Gson$Preconditions {
    private C$Gson$Preconditions() {
        throw new UnsupportedOperationException();
    }

    public static void checkArgument(boolean z) {
        if (z) {
            return;
        }
        throw new IllegalArgumentException();
    }

    public static <T> T checkNotNull(T t) {
        Objects.requireNonNull(t);
        return t;
    }
}
