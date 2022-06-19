package androidx.core.p025g;
/* renamed from: androidx.core.g.f */
/* loaded from: classes-dex2jar.jar:androidx/core/g/f.class */
public final class C0527f {
    /* renamed from: a */
    public static int m20645a(int i) {
        if (i < 0) {
            throw new IllegalArgumentException();
        }
        return i;
    }

    /* renamed from: a */
    public static <T> T m20644a(T t) {
        if (t == null) {
            throw new NullPointerException();
        }
        return t;
    }

    /* renamed from: a */
    public static <T> T m20643a(T t, Object obj) {
        if (t == null) {
            throw new NullPointerException(String.valueOf(obj));
        }
        return t;
    }

    /* renamed from: a */
    public static void m20642a(boolean z, Object obj) {
        if (!z) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
    }
}
