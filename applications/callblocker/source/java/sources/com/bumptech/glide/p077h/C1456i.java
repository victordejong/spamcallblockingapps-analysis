package com.bumptech.glide.p077h;

import android.text.TextUtils;
import java.util.Collection;
/* renamed from: com.bumptech.glide.h.i */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/h/i.class */
public final class C1456i {
    /* renamed from: a */
    public static <T> T m16989a(T t) {
        return (T) m16988a(t, "Argument must not be null");
    }

    /* renamed from: a */
    public static <T> T m16988a(T t, String str) {
        if (t == null) {
            throw new NullPointerException(str);
        }
        return t;
    }

    /* renamed from: a */
    public static String m16987a(String str) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Must not be null or empty");
        }
        return str;
    }

    /* renamed from: a */
    public static <T extends Collection<Y>, Y> T m16986a(T t) {
        if (t.isEmpty()) {
            throw new IllegalArgumentException("Must not be empty.");
        }
        return t;
    }

    /* renamed from: a */
    public static void m16985a(boolean z, String str) {
        if (!z) {
            throw new IllegalArgumentException(str);
        }
    }
}
