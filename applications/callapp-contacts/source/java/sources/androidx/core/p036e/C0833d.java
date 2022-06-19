package androidx.core.p036e;

import java.util.Objects;
/* renamed from: androidx.core.e.d */
/* loaded from: classes-dex2jar.jar:androidx/core/e/d.class */
public final class C0833d {
    private C0833d() {
    }

    /* renamed from: a */
    public static int m44411a(int i) {
        if (i >= 0) {
            return i;
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: a */
    public static <T> T m44410a(T t) {
        Objects.requireNonNull(t);
        return t;
    }

    /* renamed from: a */
    public static <T> T m44409a(T t, Object obj) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(String.valueOf(obj));
    }

    /* renamed from: a */
    public static void m44408a(boolean z) {
        if (z) {
            return;
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: a */
    public static void m44407a(boolean z, Object obj) {
        if (z) {
            return;
        }
        throw new IllegalArgumentException(String.valueOf(obj));
    }

    /* renamed from: b */
    public static void m44406b(boolean z) {
        if (z) {
            return;
        }
        throw new IllegalStateException((String) null);
    }
}
