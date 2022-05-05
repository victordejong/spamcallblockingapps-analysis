package dagger.internal;
/* loaded from: classes-dex2jar.jar:dagger/internal/Preconditions.class */
public final class Preconditions {
    private Preconditions() {
    }

    /* renamed from: a */
    public static <T> void m4634a(T t, Class<T> cls) {
        if (t == null) {
            throw new IllegalStateException(cls.getCanonicalName() + " must be set");
        }
    }

    /* renamed from: b */
    public static <T> T m4633b(T t) {
        if (t != null) {
            return t;
        }
        throw null;
    }

    /* renamed from: c */
    public static <T> T m4632c(T t, String str) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(str);
    }
}
