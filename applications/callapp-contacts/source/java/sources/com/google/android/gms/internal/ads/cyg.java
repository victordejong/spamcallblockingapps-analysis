package com.google.android.gms.internal.ads;

import java.util.Objects;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cyg.class */
public final class cyg {
    /* renamed from: a */
    public static int m17063a(int i, int i2) {
        String str;
        if (i < 0 || i >= i2) {
            if (i < 0) {
                str = cyo.m17048a("%s (%s) must not be negative", "index", Integer.valueOf(i));
            } else if (i2 < 0) {
                StringBuilder sb = new StringBuilder(26);
                sb.append("negative size: ");
                sb.append(i2);
                throw new IllegalArgumentException(sb.toString());
            } else {
                str = cyo.m17048a("%s (%s) must be less than size (%s)", "index", Integer.valueOf(i), Integer.valueOf(i2));
            }
            throw new IndexOutOfBoundsException(str);
        }
        return i;
    }

    /* renamed from: a */
    public static int m17061a(int i, int i2, String str) {
        if (i < 0 || i > i2) {
            throw new IndexOutOfBoundsException(m17055b(i, i2, str));
        }
        return i;
    }

    /* renamed from: a */
    public static <T> T m17060a(T t) {
        Objects.requireNonNull(t);
        return t;
    }

    /* renamed from: a */
    public static <T> T m17059a(T t, Object obj) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(String.valueOf(obj));
    }

    /* renamed from: a */
    public static <T> T m17058a(T t, String str, Object obj) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(cyo.m17048a(str, obj));
    }

    /* renamed from: a */
    public static void m17062a(int i, int i2, int i3) {
        if (i < 0 || i2 < i || i2 > i3) {
            throw new IndexOutOfBoundsException((i < 0 || i > i3) ? m17055b(i, i3, "start index") : (i2 < 0 || i2 > i3) ? m17055b(i2, i3, "end index") : cyo.m17048a("end index (%s) must not be less than start index (%s)", Integer.valueOf(i2), Integer.valueOf(i)));
        }
    }

    /* renamed from: a */
    public static void m17057a(boolean z, Object obj) {
        if (z) {
            return;
        }
        throw new IllegalArgumentException(String.valueOf(obj));
    }

    /* renamed from: b */
    public static int m17056b(int i, int i2) {
        if (i < 0 || i > i2) {
            throw new IndexOutOfBoundsException(m17055b(i, i2, "index"));
        }
        return i;
    }

    /* renamed from: b */
    private static String m17055b(int i, int i2, String str) {
        if (i < 0) {
            return cyo.m17048a("%s (%s) must not be negative", str, Integer.valueOf(i));
        }
        if (i2 >= 0) {
            return cyo.m17048a("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i), Integer.valueOf(i2));
        }
        StringBuilder sb = new StringBuilder(26);
        sb.append("negative size: ");
        sb.append(i2);
        throw new IllegalArgumentException(sb.toString());
    }
}
