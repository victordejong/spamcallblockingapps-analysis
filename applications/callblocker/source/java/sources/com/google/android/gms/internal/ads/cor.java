package com.google.android.gms.internal.ads;

import org.checkerframework.checker.nullness.compatqual.NonNullDecl;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cor.class */
public final class cor {
    /* renamed from: a */
    public static int m10939a(int i, int i2) {
        String m10929a;
        if (i < 0 || i >= i2) {
            if (i < 0) {
                m10929a = cos.m10929a("%s (%s) must not be negative", "index", Integer.valueOf(i));
            } else if (i2 < 0) {
                throw new IllegalArgumentException(new StringBuilder(26).append("negative size: ").append(i2).toString());
            } else {
                m10929a = cos.m10929a("%s (%s) must be less than size (%s)", "index", Integer.valueOf(i), Integer.valueOf(i2));
            }
            throw new IndexOutOfBoundsException(m10929a);
        }
        return i;
    }

    @NonNullDecl
    /* renamed from: a */
    public static <T> T m10936a(@NonNullDecl T t) {
        if (t == null) {
            throw new NullPointerException();
        }
        return t;
    }

    @NonNullDecl
    /* renamed from: a */
    public static <T> T m10935a(@NonNullDecl T t, @NullableDecl Object obj) {
        if (t == null) {
            throw new NullPointerException(String.valueOf(obj));
        }
        return t;
    }

    @NonNullDecl
    /* renamed from: a */
    public static <T> T m10934a(@NonNullDecl T t, @NullableDecl String str, @NullableDecl Object obj) {
        if (t == null) {
            throw new NullPointerException(cos.m10929a(str, obj));
        }
        return t;
    }

    /* renamed from: a */
    private static String m10937a(int i, int i2, @NullableDecl String str) {
        String m10929a;
        if (i < 0) {
            m10929a = cos.m10929a("%s (%s) must not be negative", str, Integer.valueOf(i));
        } else if (i2 < 0) {
            throw new IllegalArgumentException(new StringBuilder(26).append("negative size: ").append(i2).toString());
        } else {
            m10929a = cos.m10929a("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i), Integer.valueOf(i2));
        }
        return m10929a;
    }

    /* renamed from: a */
    public static void m10938a(int i, int i2, int i3) {
        if (i < 0 || i2 < i || i2 > i3) {
            throw new IndexOutOfBoundsException((i < 0 || i > i3) ? m10937a(i, i3, "start index") : (i2 < 0 || i2 > i3) ? m10937a(i2, i3, "end index") : cos.m10929a("end index (%s) must not be less than start index (%s)", Integer.valueOf(i2), Integer.valueOf(i)));
        }
    }

    /* renamed from: a */
    public static void m10933a(boolean z, @NullableDecl Object obj) {
        if (!z) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
    }

    /* renamed from: b */
    public static int m10932b(int i, int i2) {
        if (i < 0 || i > i2) {
            throw new IndexOutOfBoundsException(m10937a(i, i2, "index"));
        }
        return i;
    }
}
