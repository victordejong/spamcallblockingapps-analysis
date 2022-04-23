package com.google.common.base;

import java.util.Objects;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes4-dex2jar.jar:com/google/common/base/m.class */
public final class m {
    static {
        try {
            g.a();
        } catch (Throwable th) {
            Logger.getLogger(m.class.getName()).log(Level.WARNING, "Java 7 compatibility warning: See https://github.com/google/guava/issues/5269", (Throwable) new Exception("Guava will drop support for Java 7 in 2021. Please let us know if this will cause you problems: https://github.com/google/guava/issues/5269", th));
        }
    }

    private m() {
    }

    public static int a(int i, int i2) {
        String str;
        if (i >= 0 && i < i2) {
            return i;
        }
        if (i < 0) {
            str = p.a("%s (%s) must not be negative", "index", Integer.valueOf(i));
        } else if (i2 < 0) {
            StringBuilder sb = new StringBuilder(26);
            sb.append("negative size: ");
            sb.append(i2);
            throw new IllegalArgumentException(sb.toString());
        } else {
            str = p.a("%s (%s) must be less than size (%s)", "index", Integer.valueOf(i), Integer.valueOf(i2));
        }
        throw new IndexOutOfBoundsException(str);
    }

    public static <T> T a(T t) {
        Objects.requireNonNull(t);
        return t;
    }

    public static <T> T a(T t, Object obj) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(String.valueOf(obj));
    }

    public static <T> T a(T t, String str, Object... objArr) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(p.a(str, objArr));
    }

    private static String a(int i, int i2, String str) {
        if (i < 0) {
            return p.a("%s (%s) must not be negative", str, Integer.valueOf(i));
        }
        if (i2 >= 0) {
            return p.a("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i), Integer.valueOf(i2));
        }
        StringBuilder sb = new StringBuilder(26);
        sb.append("negative size: ");
        sb.append(i2);
        throw new IllegalArgumentException(sb.toString());
    }

    public static void a(int i, int i2, int i3) {
        if (i < 0 || i2 < i || i2 > i3) {
            throw new IndexOutOfBoundsException((i < 0 || i > i3) ? a(i, i3, "start index") : (i2 < 0 || i2 > i3) ? a(i2, i3, "end index") : p.a("end index (%s) must not be less than start index (%s)", Integer.valueOf(i2), Integer.valueOf(i)));
        }
    }

    public static void a(boolean z) {
        if (!z) {
            throw new IllegalArgumentException();
        }
    }

    public static void a(boolean z, Object obj) {
        if (!z) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
    }

    public static void a(boolean z, String str, char c2) {
        if (!z) {
            throw new IllegalArgumentException(p.a(str, Character.valueOf(c2)));
        }
    }

    public static void a(boolean z, String str, int i) {
    }

    public static void a(boolean z, String str, int i, int i2) {
        if (!z) {
            throw new IllegalArgumentException(p.a(str, Integer.valueOf(i), 1073741823));
        }
    }

    public static void a(boolean z, String str, long j) {
        if (!z) {
            throw new IllegalArgumentException(p.a(str, Long.valueOf(j)));
        }
    }

    public static void a(boolean z, String str, Object obj) {
        if (!z) {
            throw new IllegalArgumentException(p.a(str, obj));
        }
    }

    public static void a(boolean z, String str, Object... objArr) {
        if (!z) {
            throw new IllegalArgumentException(p.a(str, objArr));
        }
    }

    public static int b(int i, int i2) {
        if (i >= 0 && i <= i2) {
            return i;
        }
        throw new IndexOutOfBoundsException(a(i, i2, "index"));
    }

    public static void b(boolean z) {
        if (!z) {
            throw new IllegalStateException();
        }
    }

    public static void b(boolean z, Object obj) {
        if (!z) {
            throw new IllegalStateException(String.valueOf(obj));
        }
    }

    public static void b(boolean z, String str, int i) {
        if (!z) {
            throw new IllegalStateException(p.a(str, Integer.valueOf(i)));
        }
    }

    public static void b(boolean z, String str, Object obj) {
        if (!z) {
            throw new IllegalStateException(p.a(str, obj));
        }
    }

    public static void b(boolean z, String str, Object... objArr) {
        if (!z) {
            throw new IllegalStateException(p.a(str, objArr));
        }
    }
}
