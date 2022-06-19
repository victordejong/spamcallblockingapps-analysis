package com.google.android.gms.common.internal;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.util.C6247x;
import java.util.Objects;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
/* renamed from: com.google.android.gms.common.internal.o */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/o.class */
public final class C6155o {
    /* renamed from: a */
    public static void m17027a(boolean z) {
        if (z) {
            return;
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: b */
    public static void m17026b(boolean z, @RecentlyNonNull Object obj) {
        if (z) {
            return;
        }
        throw new IllegalArgumentException(String.valueOf(obj));
    }

    /* renamed from: c */
    public static void m17025c(boolean z, @RecentlyNonNull String str, @RecentlyNonNull Object... objArr) {
        if (z) {
            return;
        }
        throw new IllegalArgumentException(String.format(str, objArr));
    }

    /* renamed from: d */
    public static void m17024d(@RecentlyNonNull Handler handler) {
        Looper myLooper = Looper.myLooper();
        if (myLooper != handler.getLooper()) {
            String name = myLooper != null ? myLooper.getThread().getName() : "null current looper";
            String name2 = handler.getLooper().getThread().getName();
            StringBuilder sb = new StringBuilder(String.valueOf(name2).length() + 36 + String.valueOf(name).length());
            sb.append("Must be called on ");
            sb.append(name2);
            sb.append(" thread, but got ");
            sb.append(name);
            sb.append(".");
            throw new IllegalStateException(sb.toString());
        }
    }

    /* renamed from: e */
    public static void m17023e(@RecentlyNonNull String str) {
        if (C6247x.m16760a()) {
            return;
        }
        throw new IllegalStateException(str);
    }

    @RecentlyNonNull
    @EnsuresNonNull({"#1"})
    /* renamed from: f */
    public static String m17022f(String str) {
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        throw new IllegalArgumentException("Given String is empty or null");
    }

    @RecentlyNonNull
    @EnsuresNonNull({"#1"})
    /* renamed from: g */
    public static String m17021g(String str, @RecentlyNonNull Object obj) {
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        throw new IllegalArgumentException(String.valueOf(obj));
    }

    /* renamed from: h */
    public static void m17020h() {
        m17019i("Must not be called on the main application thread");
    }

    /* renamed from: i */
    public static void m17019i(@RecentlyNonNull String str) {
        if (!C6247x.m16760a()) {
            return;
        }
        throw new IllegalStateException(str);
    }

    @EnsuresNonNull({"#1"})
    /* renamed from: j */
    public static <T> T m17018j(T t) {
        Objects.requireNonNull(t, "null reference");
        return t;
    }

    @EnsuresNonNull({"#1"})
    /* renamed from: k */
    public static <T> T m17017k(@RecentlyNonNull T t, @RecentlyNonNull Object obj) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(String.valueOf(obj));
    }

    /* renamed from: l */
    public static int m17016l(int i) {
        if (i != 0) {
            return i;
        }
        throw new IllegalArgumentException("Given Integer is zero");
    }

    /* renamed from: m */
    public static void m17015m(boolean z) {
        if (z) {
            return;
        }
        throw new IllegalStateException();
    }

    /* renamed from: n */
    public static void m17014n(boolean z, @RecentlyNonNull Object obj) {
        if (z) {
            return;
        }
        throw new IllegalStateException(String.valueOf(obj));
    }

    /* renamed from: o */
    public static void m17013o(boolean z, @RecentlyNonNull String str, @RecentlyNonNull Object... objArr) {
        if (z) {
            return;
        }
        throw new IllegalStateException(String.format(str, objArr));
    }
}
