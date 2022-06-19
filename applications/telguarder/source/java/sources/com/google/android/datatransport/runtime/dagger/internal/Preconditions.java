package com.google.android.datatransport.runtime.dagger.internal;

import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/dagger/internal/Preconditions.class */
public final class Preconditions {
    private Preconditions() {
    }

    public static <T> void checkBuilderRequirement(T t, Class<T> cls) {
        if (t != null) {
            return;
        }
        throw new IllegalStateException(cls.getCanonicalName() + " must be set");
    }

    public static <T> T checkNotNull(T t) {
        Objects.requireNonNull(t);
        return t;
    }

    public static <T> T checkNotNull(T t, String str) {
        Objects.requireNonNull(t, str);
        return t;
    }

    public static <T> T checkNotNull(T t, String str, Object obj) {
        if (t == null) {
            if (!str.contains("%s")) {
                throw new IllegalArgumentException("errorMessageTemplate has no format specifiers");
            }
            if (str.indexOf("%s") != str.lastIndexOf("%s")) {
                throw new IllegalArgumentException("errorMessageTemplate has more than one format specifier");
            }
            throw new NullPointerException(str.replace("%s", obj instanceof Class ? ((Class) obj).getCanonicalName() : String.valueOf(obj)));
        }
        return t;
    }
}
