package com.bumptech.glide.p223p;

import android.text.TextUtils;
import java.util.Collection;
import java.util.Objects;
/* renamed from: com.bumptech.glide.p.j */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/p/j.class */
public final class C4382j {
    /* renamed from: a */
    public static void m22722a(boolean z, String str) {
        if (z) {
            return;
        }
        throw new IllegalArgumentException(str);
    }

    /* renamed from: b */
    public static String m22721b(String str) {
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        throw new IllegalArgumentException("Must not be null or empty");
    }

    /* renamed from: c */
    public static <T extends Collection<Y>, Y> T m22720c(T t) {
        if (!t.isEmpty()) {
            return t;
        }
        throw new IllegalArgumentException("Must not be empty.");
    }

    /* renamed from: d */
    public static <T> T m22719d(T t) {
        return (T) m22718e(t, "Argument must not be null");
    }

    /* renamed from: e */
    public static <T> T m22718e(T t, String str) {
        Objects.requireNonNull(t, str);
        return t;
    }
}
