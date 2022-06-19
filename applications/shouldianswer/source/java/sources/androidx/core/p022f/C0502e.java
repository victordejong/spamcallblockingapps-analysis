package androidx.core.p022f;
/* renamed from: androidx.core.f.e */
/* loaded from: classes-dex2jar.jar:androidx/core/f/e.class */
public final class C0502e {
    /* renamed from: a */
    public static int m6463a(int i) {
        if (i >= 0) {
            return i;
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: a */
    public static <T> T m6462a(T t) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException();
    }

    /* renamed from: a */
    public static <T> T m6461a(T t, Object obj) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(String.valueOf(obj));
    }
}
