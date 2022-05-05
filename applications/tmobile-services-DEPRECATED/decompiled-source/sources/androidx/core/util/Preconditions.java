package androidx.core.util;

import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/core/util/Preconditions.class */
public final class Preconditions {
    private Preconditions() {
    }

    /* renamed from: a */
    public static void m19340a(boolean z) {
        if (!z) {
            throw new IllegalArgumentException();
        }
    }

    /* renamed from: b */
    public static void m19339b(boolean z, @NonNull Object obj) {
        if (!z) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
    }

    @IntRange
    /* renamed from: c */
    public static int m19338c(int i) {
        if (i >= 0) {
            return i;
        }
        throw new IllegalArgumentException();
    }

    @NonNull
    /* renamed from: d */
    public static <T> T m19337d(@Nullable T t) {
        if (t != null) {
            return t;
        }
        throw null;
    }

    @NonNull
    /* renamed from: e */
    public static <T> T m19336e(@Nullable T t, @NonNull Object obj) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(String.valueOf(obj));
    }
}
