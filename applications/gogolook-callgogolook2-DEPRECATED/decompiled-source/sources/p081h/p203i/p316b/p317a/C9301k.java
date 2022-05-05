package p081h.p203i.p316b.p317a;
/* renamed from: h.i.b.a.k */
/* loaded from: classes2-dex2jar.jar:h/i/b/a/k.class */
public final class C9301k {
    /* renamed from: a */
    public static int m15481a(int i, int i2) {
        m15466c(i, i2, "index");
        return i;
    }

    /* renamed from: a */
    public static <T> T m15478a(T t) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException();
    }

    /* renamed from: a */
    public static <T> T m15477a(T t, Object obj) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(String.valueOf(obj));
    }

    /* renamed from: a */
    public static String m15480a(int i, int i2, int i3) {
        return (i < 0 || i > i3) ? m15469b(i, i3, "start index") : (i2 < 0 || i2 > i3) ? m15469b(i2, i3, "end index") : C9306o.m15454a("end index (%s) must not be less than start index (%s)", Integer.valueOf(i2), Integer.valueOf(i));
    }

    /* renamed from: a */
    public static String m15479a(int i, int i2, String str) {
        if (i < 0) {
            return C9306o.m15454a("%s (%s) must not be negative", str, Integer.valueOf(i));
        }
        if (i2 >= 0) {
            return C9306o.m15454a("%s (%s) must be less than size (%s)", str, Integer.valueOf(i), Integer.valueOf(i2));
        }
        throw new IllegalArgumentException("negative size: " + i2);
    }

    /* renamed from: a */
    public static void m15476a(boolean z) {
        if (!z) {
            throw new IllegalArgumentException();
        }
    }

    /* renamed from: a */
    public static void m15475a(boolean z, Object obj) {
        if (!z) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
    }

    /* renamed from: a */
    public static void m15474a(boolean z, String str, long j) {
        if (!z) {
            throw new IllegalArgumentException(C9306o.m15454a(str, Long.valueOf(j)));
        }
    }

    /* renamed from: a */
    public static void m15473a(boolean z, String str, Object obj) {
        if (!z) {
            throw new IllegalArgumentException(C9306o.m15454a(str, obj));
        }
    }

    /* renamed from: a */
    public static void m15472a(boolean z, String str, Object obj, Object obj2) {
        if (!z) {
            throw new IllegalArgumentException(C9306o.m15454a(str, obj, obj2));
        }
    }

    /* renamed from: b */
    public static int m15471b(int i, int i2) {
        m15465d(i, i2, "index");
        return i;
    }

    /* renamed from: b */
    public static String m15469b(int i, int i2, String str) {
        if (i < 0) {
            return C9306o.m15454a("%s (%s) must not be negative", str, Integer.valueOf(i));
        }
        if (i2 >= 0) {
            return C9306o.m15454a("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i), Integer.valueOf(i2));
        }
        throw new IllegalArgumentException("negative size: " + i2);
    }

    /* renamed from: b */
    public static void m15470b(int i, int i2, int i3) {
        if (i < 0 || i2 < i || i2 > i3) {
            throw new IndexOutOfBoundsException(m15480a(i, i2, i3));
        }
    }

    /* renamed from: b */
    public static void m15468b(boolean z) {
        if (!z) {
            throw new IllegalStateException();
        }
    }

    /* renamed from: b */
    public static void m15467b(boolean z, Object obj) {
        if (!z) {
            throw new IllegalStateException(String.valueOf(obj));
        }
    }

    /* renamed from: c */
    public static int m15466c(int i, int i2, String str) {
        if (i >= 0 && i < i2) {
            return i;
        }
        throw new IndexOutOfBoundsException(m15479a(i, i2, str));
    }

    /* renamed from: d */
    public static int m15465d(int i, int i2, String str) {
        if (i >= 0 && i <= i2) {
            return i;
        }
        throw new IndexOutOfBoundsException(m15469b(i, i2, str));
    }
}
