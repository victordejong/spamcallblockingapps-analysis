package p012b.p042i.p053o;
/* renamed from: b.i.o.h */
/* loaded from: classes-dex2jar.jar:b/i/o/h.class */
public final class C0948h {
    /* renamed from: a */
    public static int m35443a(int i) {
        if (i >= 0) {
            return i;
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: a */
    public static <T> T m35442a(T t) {
        if (t != null) {
            return t;
        }
        throw null;
    }

    /* renamed from: a */
    public static <T> T m35441a(T t, Object obj) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(String.valueOf(obj));
    }

    /* renamed from: a */
    public static void m35440a(boolean z) {
        if (!z) {
            throw new IllegalArgumentException();
        }
    }

    /* renamed from: a */
    public static void m35439a(boolean z, Object obj) {
        if (!z) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
    }

    /* renamed from: a */
    public static void m35438a(boolean z, String str) {
        if (!z) {
            throw new IllegalStateException(str);
        }
    }

    /* renamed from: b */
    public static void m35437b(boolean z) {
        m35438a(z, (String) null);
    }
}
