package com.google.common.base;

import java.util.Objects;
/* renamed from: com.google.common.base.j */
/* loaded from: classes2-dex2jar.jar:com/google/common/base/j.class */
public final class C8756j {
    /* renamed from: a */
    private static String m2800a(int i, int i2, String str) {
        if (i < 0) {
            return C8763m.m2764b("%s (%s) must not be negative", str, Integer.valueOf(i));
        }
        if (i2 >= 0) {
            return C8763m.m2764b("%s (%s) must be less than size (%s)", str, Integer.valueOf(i), Integer.valueOf(i2));
        }
        throw new IllegalArgumentException("negative size: " + i2);
    }

    /* renamed from: b */
    private static String m2799b(int i, int i2, String str) {
        if (i < 0) {
            return C8763m.m2764b("%s (%s) must not be negative", str, Integer.valueOf(i));
        }
        if (i2 >= 0) {
            return C8763m.m2764b("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i), Integer.valueOf(i2));
        }
        throw new IllegalArgumentException("negative size: " + i2);
    }

    /* renamed from: c */
    private static String m2798c(int i, int i2, int i3) {
        return (i < 0 || i > i3) ? m2799b(i, i3, "start index") : (i2 < 0 || i2 > i3) ? m2799b(i2, i3, "end index") : C8763m.m2764b("end index (%s) must not be less than start index (%s)", Integer.valueOf(i2), Integer.valueOf(i));
    }

    /* renamed from: d */
    public static void m2797d(boolean z) {
        if (z) {
            return;
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: e */
    public static void m2796e(boolean z, Object obj) {
        if (z) {
            return;
        }
        throw new IllegalArgumentException(String.valueOf(obj));
    }

    /* renamed from: f */
    public static void m2795f(boolean z, String str, char c) {
        if (z) {
            return;
        }
        throw new IllegalArgumentException(C8763m.m2764b(str, Character.valueOf(c)));
    }

    /* renamed from: g */
    public static void m2794g(boolean z, String str, int i) {
        if (z) {
            return;
        }
        throw new IllegalArgumentException(C8763m.m2764b(str, Integer.valueOf(i)));
    }

    /* renamed from: h */
    public static void m2793h(boolean z, String str, Object obj) {
        if (z) {
            return;
        }
        throw new IllegalArgumentException(C8763m.m2764b(str, obj));
    }

    /* renamed from: i */
    public static void m2792i(boolean z, String str, Object... objArr) {
        if (z) {
            return;
        }
        throw new IllegalArgumentException(C8763m.m2764b(str, objArr));
    }

    /* renamed from: j */
    public static int m2791j(int i, int i2) {
        return m2790k(i, i2, "index");
    }

    /* renamed from: k */
    public static int m2790k(int i, int i2, String str) {
        if (i < 0 || i >= i2) {
            throw new IndexOutOfBoundsException(m2800a(i, i2, str));
        }
        return i;
    }

    /* renamed from: l */
    public static <T> T m2789l(T t) {
        Objects.requireNonNull(t);
        return t;
    }

    /* renamed from: m */
    public static <T> T m2788m(T t, Object obj) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(String.valueOf(obj));
    }

    /* renamed from: n */
    public static <T> T m2787n(T t, String str, Object... objArr) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(C8763m.m2764b(str, objArr));
    }

    /* renamed from: o */
    public static int m2786o(int i, int i2) {
        return m2785p(i, i2, "index");
    }

    /* renamed from: p */
    public static int m2785p(int i, int i2, String str) {
        if (i < 0 || i > i2) {
            throw new IndexOutOfBoundsException(m2799b(i, i2, str));
        }
        return i;
    }

    /* renamed from: q */
    public static void m2784q(int i, int i2, int i3) {
        if (i < 0 || i2 < i || i2 > i3) {
            throw new IndexOutOfBoundsException(m2798c(i, i2, i3));
        }
    }

    /* renamed from: r */
    public static void m2783r(boolean z) {
        if (z) {
            return;
        }
        throw new IllegalStateException();
    }

    /* renamed from: s */
    public static void m2782s(boolean z, Object obj) {
        if (z) {
            return;
        }
        throw new IllegalStateException(String.valueOf(obj));
    }

    /* renamed from: t */
    public static void m2781t(boolean z, String str, int i) {
        if (z) {
            return;
        }
        throw new IllegalStateException(C8763m.m2764b(str, Integer.valueOf(i)));
    }

    /* renamed from: u */
    public static void m2780u(boolean z, String str, Object obj) {
        if (z) {
            return;
        }
        throw new IllegalStateException(C8763m.m2764b(str, obj));
    }

    /* renamed from: v */
    public static void m2779v(boolean z, String str, Object... objArr) {
        if (z) {
            return;
        }
        throw new IllegalStateException(C8763m.m2764b(str, objArr));
    }
}
