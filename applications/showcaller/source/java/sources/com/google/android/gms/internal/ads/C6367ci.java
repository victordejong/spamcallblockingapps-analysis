package com.google.android.gms.internal.ads;

import android.text.TextUtils;
/* renamed from: com.google.android.gms.internal.ads.ci */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ci.class */
public final class C6367ci {
    /* renamed from: a */
    public static void m16042a(boolean z) {
        if (z) {
            return;
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: b */
    public static void m16041b(boolean z, Object obj) {
        if (z) {
            return;
        }
        throw new IllegalArgumentException((String) obj);
    }

    /* renamed from: c */
    public static int m16040c(int i, int i2, int i3) {
        if (i < 0 || i >= i3) {
            throw new IndexOutOfBoundsException();
        }
        return 0;
    }

    /* renamed from: d */
    public static void m16039d(boolean z) {
        if (z) {
            return;
        }
        throw new IllegalStateException();
    }

    /* renamed from: e */
    public static void m16038e(boolean z, Object obj) {
        if (z) {
            return;
        }
        throw new IllegalStateException((String) obj);
    }

    /* renamed from: f */
    public static String m16037f(String str) {
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        throw new IllegalArgumentException();
    }
}
