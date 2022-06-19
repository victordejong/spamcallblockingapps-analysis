package p321d.p323b.p327b;
/* renamed from: d.b.b.b */
/* loaded from: classes2-dex2jar.jar:d/b/b/b.class */
public final class C9475b {
    /* renamed from: a */
    public static void m513a(boolean z, Object obj) {
        if (z) {
            return;
        }
        throw new IllegalArgumentException(String.valueOf(obj));
    }

    /* renamed from: b */
    public static <T> T m512b(T t, Object obj) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(String.valueOf(obj));
    }

    /* renamed from: c */
    public static void m511c(boolean z, Object obj) {
        if (z) {
            return;
        }
        throw new IllegalStateException(String.valueOf(obj));
    }

    /* renamed from: d */
    public static boolean m510d(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }
}
