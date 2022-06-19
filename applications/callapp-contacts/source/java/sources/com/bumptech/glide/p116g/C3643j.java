package com.bumptech.glide.p116g;

import android.text.TextUtils;
import java.util.Collection;
import java.util.Objects;
/* renamed from: com.bumptech.glide.g.j */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/g/j.class */
public final class C3643j {
    private C3643j() {
    }

    /* renamed from: a */
    public static <T> T m37588a(T t, String str) {
        Objects.requireNonNull(t, str);
        return t;
    }

    /* renamed from: a */
    public static String m37587a(String str) {
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        throw new IllegalArgumentException("Must not be null or empty");
    }

    /* renamed from: a */
    public static <T extends Collection<Y>, Y> T m37586a(T t) {
        if (!t.isEmpty()) {
            return t;
        }
        throw new IllegalArgumentException("Must not be empty.");
    }

    /* renamed from: a */
    public static void m37585a(boolean z, String str) {
        if (z) {
            return;
        }
        throw new IllegalArgumentException(str);
    }
}
