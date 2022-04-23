package org.jsoup.a;
/* loaded from: classes5-dex2jar.jar:org/jsoup/a/c.class */
public final class c {
    private c() {
    }

    public static void a(Object obj) {
        if (obj == null) {
            throw new IllegalArgumentException("Object must not be null");
        }
    }

    public static void a(Object obj, String str) {
        if (obj == null) {
            throw new IllegalArgumentException(str);
        }
    }

    public static void a(String str) {
        if (str == null || str.length() == 0) {
            throw new IllegalArgumentException("String must not be empty");
        }
    }

    public static void a(String str, String str2) {
        if (str == null || str.length() == 0) {
            throw new IllegalArgumentException(str2);
        }
    }

    public static void a(boolean z) {
        if (!z) {
            throw new IllegalArgumentException("Must be true");
        }
    }

    public static void a(boolean z, String str) {
        if (!z) {
            throw new IllegalArgumentException(str);
        }
    }

    public static void a(Object[] objArr) {
        for (Object obj : objArr) {
            if (obj == null) {
                throw new IllegalArgumentException("Array must not contain any null objects");
            }
        }
    }

    public static void b(String str) {
        throw new IllegalArgumentException(str);
    }

    public static void b(boolean z) {
        if (z) {
            throw new IllegalArgumentException("Must be false");
        }
    }
}
