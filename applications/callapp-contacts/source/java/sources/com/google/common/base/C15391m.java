package com.google.common.base;

import java.util.Objects;
import java.util.logging.Level;
import java.util.logging.Logger;
/* renamed from: com.google.common.base.m */
/* loaded from: classes4-dex2jar.jar:com/google/common/base/m.class */
public final class C15391m {
    static {
        try {
            C15379g.m8962a();
        } catch (Throwable th) {
            Logger.getLogger(C15391m.class.getName()).log(Level.WARNING, "Java 7 compatibility warning: See https://github.com/google/guava/issues/5269", (Throwable) new Exception("Guava will drop support for Java 7 in 2021. Please let us know if this will cause you problems: https://github.com/google/guava/issues/5269", th));
        }
    }

    private C15391m() {
    }

    /* renamed from: a */
    public static int m8949a(int i, int i2) {
        String str;
        if (i < 0 || i >= i2) {
            if (i < 0) {
                str = C15398p.m8921a("%s (%s) must not be negative", "index", Integer.valueOf(i));
            } else if (i2 < 0) {
                StringBuilder sb = new StringBuilder(26);
                sb.append("negative size: ");
                sb.append(i2);
                throw new IllegalArgumentException(sb.toString());
            } else {
                str = C15398p.m8921a("%s (%s) must be less than size (%s)", "index", Integer.valueOf(i), Integer.valueOf(i2));
            }
            throw new IndexOutOfBoundsException(str);
        }
        return i;
    }

    /* renamed from: a */
    public static <T> T m8946a(T t) {
        Objects.requireNonNull(t);
        return t;
    }

    /* renamed from: a */
    public static <T> T m8945a(T t, Object obj) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(String.valueOf(obj));
    }

    /* renamed from: a */
    public static <T> T m8944a(T t, String str, Object... objArr) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(C15398p.m8921a(str, objArr));
    }

    /* renamed from: a */
    private static String m8947a(int i, int i2, String str) {
        if (i < 0) {
            return C15398p.m8921a("%s (%s) must not be negative", str, Integer.valueOf(i));
        }
        if (i2 >= 0) {
            return C15398p.m8921a("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i), Integer.valueOf(i2));
        }
        StringBuilder sb = new StringBuilder(26);
        sb.append("negative size: ");
        sb.append(i2);
        throw new IllegalArgumentException(sb.toString());
    }

    /* renamed from: a */
    public static void m8948a(int i, int i2, int i3) {
        if (i < 0 || i2 < i || i2 > i3) {
            throw new IndexOutOfBoundsException((i < 0 || i > i3) ? m8947a(i, i3, "start index") : (i2 < 0 || i2 > i3) ? m8947a(i2, i3, "end index") : C15398p.m8921a("end index (%s) must not be less than start index (%s)", Integer.valueOf(i2), Integer.valueOf(i)));
        }
    }

    /* renamed from: a */
    public static void m8943a(boolean z) {
        if (z) {
            return;
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: a */
    public static void m8942a(boolean z, Object obj) {
        if (z) {
            return;
        }
        throw new IllegalArgumentException(String.valueOf(obj));
    }

    /* renamed from: a */
    public static void m8941a(boolean z, String str, char c) {
        if (z) {
            return;
        }
        throw new IllegalArgumentException(C15398p.m8921a(str, Character.valueOf(c)));
    }

    /* renamed from: a */
    public static void m8940a(boolean z, String str, int i) {
    }

    /* renamed from: a */
    public static void m8939a(boolean z, String str, int i, int i2) {
        if (z) {
            return;
        }
        throw new IllegalArgumentException(C15398p.m8921a(str, Integer.valueOf(i), 1073741823));
    }

    /* renamed from: a */
    public static void m8938a(boolean z, String str, long j) {
        if (z) {
            return;
        }
        throw new IllegalArgumentException(C15398p.m8921a(str, Long.valueOf(j)));
    }

    /* renamed from: a */
    public static void m8937a(boolean z, String str, Object obj) {
        if (z) {
            return;
        }
        throw new IllegalArgumentException(C15398p.m8921a(str, obj));
    }

    /* renamed from: a */
    public static void m8936a(boolean z, String str, Object... objArr) {
        if (z) {
            return;
        }
        throw new IllegalArgumentException(C15398p.m8921a(str, objArr));
    }

    /* renamed from: b */
    public static int m8935b(int i, int i2) {
        if (i < 0 || i > i2) {
            throw new IndexOutOfBoundsException(m8947a(i, i2, "index"));
        }
        return i;
    }

    /* renamed from: b */
    public static void m8934b(boolean z) {
        if (z) {
            return;
        }
        throw new IllegalStateException();
    }

    /* renamed from: b */
    public static void m8933b(boolean z, Object obj) {
        if (z) {
            return;
        }
        throw new IllegalStateException(String.valueOf(obj));
    }

    /* renamed from: b */
    public static void m8932b(boolean z, String str, int i) {
        if (z) {
            return;
        }
        throw new IllegalStateException(C15398p.m8921a(str, Integer.valueOf(i)));
    }

    /* renamed from: b */
    public static void m8931b(boolean z, String str, Object obj) {
        if (z) {
            return;
        }
        throw new IllegalStateException(C15398p.m8921a(str, obj));
    }

    /* renamed from: b */
    public static void m8930b(boolean z, String str, Object... objArr) {
        if (z) {
            return;
        }
        throw new IllegalStateException(C15398p.m8921a(str, objArr));
    }
}
