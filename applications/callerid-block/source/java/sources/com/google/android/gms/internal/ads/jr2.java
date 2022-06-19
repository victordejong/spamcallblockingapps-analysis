package com.google.android.gms.internal.ads;

import android.text.TextUtils;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/jr2.class */
public final class jr2 {
    /* renamed from: a */
    public static void m6926a(boolean z) {
        if (z) {
            return;
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: b */
    public static void m6925b(boolean z, Object obj) {
        if (z) {
            return;
        }
        throw new IllegalArgumentException((String) obj);
    }

    /* renamed from: c */
    public static int m6924c(int i, int i2, int i3) {
        if (i < 0 || i >= i3) {
            throw new IndexOutOfBoundsException();
        }
        return 0;
    }

    /* renamed from: d */
    public static void m6923d(boolean z) {
        if (z) {
            return;
        }
        throw new IllegalStateException();
    }

    /* renamed from: e */
    public static void m6922e(boolean z, Object obj) {
        if (z) {
            return;
        }
        throw new IllegalStateException((String) obj);
    }

    /* renamed from: f */
    public static String m6921f(String str) {
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        throw new IllegalArgumentException();
    }
}
