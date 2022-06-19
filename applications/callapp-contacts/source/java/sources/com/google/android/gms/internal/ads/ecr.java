package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.Objects;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ecr.class */
public final class ecr {
    /* renamed from: a */
    public static int m15252a(int i, int i2) {
        if (i < 0 || i >= i2) {
            throw new IndexOutOfBoundsException();
        }
        return i;
    }

    /* renamed from: a */
    public static <T> T m15251a(T t) {
        Objects.requireNonNull(t);
        return t;
    }

    /* renamed from: a */
    public static String m15250a(String str) {
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: a */
    public static void m15249a(boolean z) {
        if (z) {
            return;
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: a */
    public static void m15248a(boolean z, Object obj) {
        if (z) {
            return;
        }
        throw new IllegalArgumentException(String.valueOf(obj));
    }

    /* renamed from: b */
    public static void m15247b(boolean z) {
        if (z) {
            return;
        }
        throw new IllegalStateException();
    }

    /* renamed from: b */
    public static void m15246b(boolean z, Object obj) {
        if (z) {
            return;
        }
        throw new IllegalStateException(String.valueOf(obj));
    }
}
