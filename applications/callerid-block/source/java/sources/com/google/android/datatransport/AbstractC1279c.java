package com.google.android.datatransport;

import com.google.auto.value.AutoValue;
@AutoValue
/* renamed from: com.google.android.datatransport.c */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/c.class */
public abstract class AbstractC1279c<T> {
    /* renamed from: d */
    public static <T> AbstractC1279c<T> m9339d(T t) {
        return new a((Integer) null, t, Priority.DEFAULT);
    }

    /* renamed from: e */
    public static <T> AbstractC1279c<T> m9338e(T t) {
        return new a((Integer) null, t, Priority.VERY_LOW);
    }

    /* renamed from: f */
    public static <T> AbstractC1279c<T> m9337f(T t) {
        return new a((Integer) null, t, Priority.HIGHEST);
    }

    /* renamed from: a */
    public abstract Integer m9342a();

    /* renamed from: b */
    public abstract T m9341b();

    /* renamed from: c */
    public abstract Priority m9340c();
}
