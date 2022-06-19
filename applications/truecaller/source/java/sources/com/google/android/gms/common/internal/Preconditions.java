package com.google.android.gms.common.internal;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.tenor.android.core.constant.StringConstant;
import java.util.Objects;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import p193e.p1432d.p1439c.p1440a.C22128a;
@KeepForSdk
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/internal/Preconditions.class */
public final class Preconditions {
    private Preconditions() {
        throw new AssertionError("Uninstantiable");
    }

    @KeepForSdk
    /* renamed from: a */
    public static void m38907a(boolean z) {
        if (z) {
            return;
        }
        throw new IllegalArgumentException();
    }

    @KeepForSdk
    /* renamed from: b */
    public static void m38906b(boolean z, Object obj) {
        if (z) {
            return;
        }
        throw new IllegalArgumentException(String.valueOf(obj));
    }

    @KeepForSdk
    /* renamed from: c */
    public static void m38905c(boolean z, String str, Object... objArr) {
        if (z) {
            return;
        }
        throw new IllegalArgumentException(String.format(str, objArr));
    }

    @KeepForSdk
    /* renamed from: d */
    public static void m38904d(Handler handler) {
        Looper myLooper = Looper.myLooper();
        if (myLooper != handler.getLooper()) {
            String name = myLooper != null ? myLooper.getThread().getName() : "null current looper";
            String name2 = handler.getLooper().getThread().getName();
            StringBuilder sb = new StringBuilder(String.valueOf(name2).length() + 36 + String.valueOf(name).length());
            C22128a.m8666T0(sb, "Must be called on ", name2, " thread, but got ", name);
            sb.append(StringConstant.DOT);
            throw new IllegalStateException(sb.toString());
        }
    }

    @KeepForSdk
    /* renamed from: e */
    public static void m38903e(Handler handler, String str) {
        if (Looper.myLooper() == handler.getLooper()) {
            return;
        }
        throw new IllegalStateException(str);
    }

    @KeepForSdk
    /* renamed from: f */
    public static void m38902f(String str) {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            return;
        }
        throw new IllegalStateException(str);
    }

    @EnsuresNonNull({"#1"})
    @KeepForSdk
    /* renamed from: g */
    public static String m38901g(String str) {
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        throw new IllegalArgumentException("Given String is empty or null");
    }

    @EnsuresNonNull({"#1"})
    @KeepForSdk
    /* renamed from: h */
    public static String m38900h(String str, Object obj) {
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        throw new IllegalArgumentException(String.valueOf(obj));
    }

    @KeepForSdk
    /* renamed from: i */
    public static void m38899i(String str) {
        if (!(Looper.getMainLooper() == Looper.myLooper())) {
            return;
        }
        throw new IllegalStateException(str);
    }

    @EnsuresNonNull({"#1"})
    @KeepForSdk
    /* renamed from: j */
    public static <T> T m38898j(T t) {
        Objects.requireNonNull(t, "null reference");
        return t;
    }

    @EnsuresNonNull({"#1"})
    @KeepForSdk
    /* renamed from: k */
    public static <T> T m38897k(T t, Object obj) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(String.valueOf(obj));
    }

    @KeepForSdk
    /* renamed from: l */
    public static void m38896l(boolean z) {
        if (z) {
            return;
        }
        throw new IllegalStateException();
    }

    @KeepForSdk
    /* renamed from: m */
    public static void m38895m(boolean z, Object obj) {
        if (z) {
            return;
        }
        throw new IllegalStateException(String.valueOf(obj));
    }

    @KeepForSdk
    /* renamed from: n */
    public static void m38894n(boolean z, String str, Object... objArr) {
        if (z) {
            return;
        }
        throw new IllegalStateException(String.format(str, objArr));
    }
}
