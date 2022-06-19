package com.google.android.gms.common.internal;

import android.text.TextUtils;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.util.C1627w;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
/* renamed from: com.google.android.gms.common.internal.h */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/h.class */
public final class C1581h {
    /* renamed from: a */
    public static void m8354a(boolean z) {
        if (z) {
            return;
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: b */
    public static void m8353b(boolean z, @RecentlyNonNull Object obj) {
        if (z) {
            return;
        }
        throw new IllegalArgumentException(String.valueOf(obj));
    }

    /* renamed from: c */
    public static void m8352c(@RecentlyNonNull String str) {
        if (C1627w.m8193a()) {
            return;
        }
        throw new IllegalStateException(str);
    }

    @RecentlyNonNull
    @EnsuresNonNull({"#1"})
    /* renamed from: d */
    public static String m8351d(String str) {
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        throw new IllegalArgumentException("Given String is empty or null");
    }

    @RecentlyNonNull
    @EnsuresNonNull({"#1"})
    /* renamed from: e */
    public static String m8350e(String str, @RecentlyNonNull Object obj) {
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        throw new IllegalArgumentException(String.valueOf(obj));
    }

    /* renamed from: f */
    public static void m8349f() {
        m8348g("Must not be called on the main application thread");
    }

    /* renamed from: g */
    public static void m8348g(@RecentlyNonNull String str) {
        if (!C1627w.m8193a()) {
            return;
        }
        throw new IllegalStateException(str);
    }

    @EnsuresNonNull({"#1"})
    /* renamed from: h */
    public static <T> T m8347h(T t) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException("null reference");
    }

    @EnsuresNonNull({"#1"})
    /* renamed from: i */
    public static <T> T m8346i(@RecentlyNonNull T t, @RecentlyNonNull Object obj) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(String.valueOf(obj));
    }

    /* renamed from: j */
    public static int m8345j(int i) {
        if (i != 0) {
            return i;
        }
        throw new IllegalArgumentException("Given Integer is zero");
    }

    /* renamed from: k */
    public static void m8344k(boolean z) {
        if (z) {
            return;
        }
        throw new IllegalStateException();
    }

    /* renamed from: l */
    public static void m8343l(boolean z, @RecentlyNonNull Object obj) {
        if (z) {
            return;
        }
        throw new IllegalStateException(String.valueOf(obj));
    }
}
