package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/xu2.class */
public final class xu2 {
    /* renamed from: a */
    public static void m9056a(boolean z, Object obj) {
        if (z) {
            return;
        }
        throw new IllegalArgumentException((String) obj);
    }

    /* renamed from: b */
    public static void m9055b(boolean z, Object obj) {
        if (z) {
            return;
        }
        throw new IllegalStateException((String) obj);
    }

    /* renamed from: c */
    public static <T> T m9054c(T t, Object obj) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException((String) obj);
    }

    /* renamed from: d */
    public static <T> T m9053d(T t, String str, Object obj) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(iv2.m14267d(str, obj));
    }

    /* renamed from: e */
    public static int m9052e(int i, int i2, String str) {
        String str2;
        if (i < 0 || i >= i2) {
            if (i < 0) {
                str2 = iv2.m14267d("%s (%s) must not be negative", "index", Integer.valueOf(i));
            } else if (i2 < 0) {
                StringBuilder sb = new StringBuilder(26);
                sb.append("negative size: ");
                sb.append(i2);
                throw new IllegalArgumentException(sb.toString());
            } else {
                str2 = iv2.m14267d("%s (%s) must be less than size (%s)", "index", Integer.valueOf(i), Integer.valueOf(i2));
            }
            throw new IndexOutOfBoundsException(str2);
        }
        return i;
    }

    /* renamed from: f */
    public static int m9051f(int i, int i2, String str) {
        if (i < 0 || i > i2) {
            throw new IndexOutOfBoundsException(m9049h(i, i2, "index"));
        }
        return i;
    }

    /* renamed from: g */
    public static void m9050g(int i, int i2, int i3) {
        if (i < 0 || i2 < i || i2 > i3) {
            throw new IndexOutOfBoundsException((i < 0 || i > i3) ? m9049h(i, i3, "start index") : (i2 < 0 || i2 > i3) ? m9049h(i2, i3, "end index") : iv2.m14267d("end index (%s) must not be less than start index (%s)", Integer.valueOf(i2), Integer.valueOf(i)));
        }
    }

    /* renamed from: h */
    private static String m9049h(int i, int i2, String str) {
        if (i < 0) {
            return iv2.m14267d("%s (%s) must not be negative", str, Integer.valueOf(i));
        }
        if (i2 >= 0) {
            return iv2.m14267d("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i), Integer.valueOf(i2));
        }
        StringBuilder sb = new StringBuilder(26);
        sb.append("negative size: ");
        sb.append(i2);
        throw new IllegalArgumentException(sb.toString());
    }
}
