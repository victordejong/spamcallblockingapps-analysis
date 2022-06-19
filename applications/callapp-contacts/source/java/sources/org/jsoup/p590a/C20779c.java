package org.jsoup.p590a;
/* renamed from: org.jsoup.a.c */
/* loaded from: classes5-dex2jar.jar:org/jsoup/a/c.class */
public final class C20779c {
    private C20779c() {
    }

    /* renamed from: a */
    public static void m507a(Object obj) {
        if (obj != null) {
            return;
        }
        throw new IllegalArgumentException("Object must not be null");
    }

    /* renamed from: a */
    public static void m506a(Object obj, String str) {
        if (obj != null) {
            return;
        }
        throw new IllegalArgumentException(str);
    }

    /* renamed from: a */
    public static void m505a(String str) {
        if (str == null || str.length() == 0) {
            throw new IllegalArgumentException("String must not be empty");
        }
    }

    /* renamed from: a */
    public static void m504a(String str, String str2) {
        if (str == null || str.length() == 0) {
            throw new IllegalArgumentException(str2);
        }
    }

    /* renamed from: a */
    public static void m503a(boolean z) {
        if (z) {
            return;
        }
        throw new IllegalArgumentException("Must be true");
    }

    /* renamed from: a */
    public static void m502a(boolean z, String str) {
        if (z) {
            return;
        }
        throw new IllegalArgumentException(str);
    }

    /* renamed from: a */
    public static void m501a(Object[] objArr) {
        for (Object obj : objArr) {
            if (obj == null) {
                throw new IllegalArgumentException("Array must not contain any null objects");
            }
        }
    }

    /* renamed from: b */
    public static void m500b(String str) {
        throw new IllegalArgumentException(str);
    }

    /* renamed from: b */
    public static void m499b(boolean z) {
        if (!z) {
            return;
        }
        throw new IllegalArgumentException("Must be false");
    }
}
