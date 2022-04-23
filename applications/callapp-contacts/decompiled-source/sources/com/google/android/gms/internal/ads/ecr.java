package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.Objects;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ecr.class */
public final class ecr {
    public static int a(int i, int i2) {
        if (i >= 0 && i < i2) {
            return i;
        }
        throw new IndexOutOfBoundsException();
    }

    public static <T> T a(T t) {
        Objects.requireNonNull(t);
        return t;
    }

    public static String a(String str) {
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        throw new IllegalArgumentException();
    }

    public static void a(boolean z) {
        if (!z) {
            throw new IllegalArgumentException();
        }
    }

    public static void a(boolean z, Object obj) {
        if (!z) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
    }

    public static void b(boolean z) {
        if (!z) {
            throw new IllegalStateException();
        }
    }

    public static void b(boolean z, Object obj) {
        if (!z) {
            throw new IllegalStateException(String.valueOf(obj));
        }
    }
}
