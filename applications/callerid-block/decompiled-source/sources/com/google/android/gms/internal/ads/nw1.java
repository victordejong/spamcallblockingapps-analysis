package com.google.android.gms.internal.ads;

import org.checkerframework.checker.nullness.compatqual.NonNullDecl;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/nw1.class */
public final class nw1 {
    /* renamed from: a */
    public static void m6384a(boolean z, @NullableDecl Object obj) {
        if (!z) {
            throw new IllegalArgumentException((String) obj);
        }
    }

    @NonNullDecl
    /* renamed from: b */
    public static <T> T m6383b(@NonNullDecl T t, @NullableDecl Object obj) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException((String) obj);
    }

    @NonNullDecl
    /* renamed from: c */
    public static <T> T m6382c(@NonNullDecl T t, @NullableDecl String str, @NullableDecl Object obj) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(tw1.m5450d(str, obj));
    }

    /* renamed from: d */
    public static int m6381d(int i, int i2, @NullableDecl String str) {
        String str2;
        if (i >= 0 && i < i2) {
            return i;
        }
        if (i < 0) {
            str2 = tw1.m5450d("%s (%s) must not be negative", "index", Integer.valueOf(i));
        } else if (i2 < 0) {
            StringBuilder sb = new StringBuilder(26);
            sb.append("negative size: ");
            sb.append(i2);
            throw new IllegalArgumentException(sb.toString());
        } else {
            str2 = tw1.m5450d("%s (%s) must be less than size (%s)", "index", Integer.valueOf(i), Integer.valueOf(i2));
        }
        throw new IndexOutOfBoundsException(str2);
    }

    /* renamed from: e */
    public static int m6380e(int i, int i2, @NullableDecl String str) {
        if (i >= 0 && i <= i2) {
            return i;
        }
        throw new IndexOutOfBoundsException(m6378g(i, i2, "index"));
    }

    /* renamed from: f */
    public static void m6379f(int i, int i2, int i3) {
        if (i < 0 || i2 < i || i2 > i3) {
            throw new IndexOutOfBoundsException((i < 0 || i > i3) ? m6378g(i, i3, "start index") : (i2 < 0 || i2 > i3) ? m6378g(i2, i3, "end index") : tw1.m5450d("end index (%s) must not be less than start index (%s)", Integer.valueOf(i2), Integer.valueOf(i)));
        }
    }

    /* renamed from: g */
    private static String m6378g(int i, int i2, @NullableDecl String str) {
        if (i < 0) {
            return tw1.m5450d("%s (%s) must not be negative", str, Integer.valueOf(i));
        }
        if (i2 >= 0) {
            return tw1.m5450d("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i), Integer.valueOf(i2));
        }
        StringBuilder sb = new StringBuilder(26);
        sb.append("negative size: ");
        sb.append(i2);
        throw new IllegalArgumentException(sb.toString());
    }
}
