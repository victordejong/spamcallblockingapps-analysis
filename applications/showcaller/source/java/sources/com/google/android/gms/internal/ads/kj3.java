package com.google.android.gms.internal.ads;

import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/kj3.class */
public final class kj3 {
    /* renamed from: a */
    public static <T> T m13880a(T t, String str) {
        Objects.requireNonNull(t, str);
        return t;
    }

    /* renamed from: b */
    public static <T> T m13879b(T t) {
        Objects.requireNonNull(t, "Cannot return null from a non-@Nullable @Provides method");
        return t;
    }

    /* renamed from: c */
    public static <T> void m13878c(T t, Class<T> cls) {
        if (t != null) {
            return;
        }
        throw new IllegalStateException(String.valueOf(cls.getCanonicalName()).concat(" must be set"));
    }
}
