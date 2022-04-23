package io.opencensus.b;
/* loaded from: classes5-dex2jar.jar:io/opencensus/b/b.class */
public final class b {
    private b() {
    }

    public static <T> T a(T t, Object obj) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(String.valueOf(obj));
    }

    public static void a(boolean z, Object obj) {
        if (!z) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
    }
}
