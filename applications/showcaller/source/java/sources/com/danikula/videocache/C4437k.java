package com.danikula.videocache;

import java.util.Objects;
/* renamed from: com.danikula.videocache.k */
/* loaded from: classes-dex2jar.jar:com/danikula/videocache/k.class */
public final class C4437k {
    /* renamed from: a */
    public static void m22479a(Object... objArr) {
        for (Object obj : objArr) {
            Objects.requireNonNull(obj);
        }
    }

    /* renamed from: b */
    public static void m22478b(boolean z) {
        if (z) {
            return;
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: c */
    public static void m22477c(boolean z, String str) {
        if (z) {
            return;
        }
        throw new IllegalArgumentException(str);
    }

    /* renamed from: d */
    public static <T> T m22476d(T t) {
        Objects.requireNonNull(t);
        return t;
    }

    /* renamed from: e */
    public static <T> T m22475e(T t, String str) {
        Objects.requireNonNull(t, str);
        return t;
    }
}
