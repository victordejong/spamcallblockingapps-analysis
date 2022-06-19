package com.bumptech.glide.p029o;

import android.text.TextUtils;
import java.util.Collection;
/* renamed from: com.bumptech.glide.o.j */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/o/j.class */
public final class C0856j {
    /* renamed from: a */
    public static void m10762a(boolean z, String str) {
        if (z) {
            return;
        }
        throw new IllegalArgumentException(str);
    }

    /* renamed from: b */
    public static String m10761b(String str) {
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        throw new IllegalArgumentException("Must not be null or empty");
    }

    /* renamed from: c */
    public static <T extends Collection<Y>, Y> T m10760c(T t) {
        if (!t.isEmpty()) {
            return t;
        }
        throw new IllegalArgumentException("Must not be empty.");
    }

    /* renamed from: d */
    public static <T> T m10759d(T t) {
        m10758e(t, "Argument must not be null");
        return t;
    }

    /* renamed from: e */
    public static <T> T m10758e(T t, String str) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(str);
    }
}
