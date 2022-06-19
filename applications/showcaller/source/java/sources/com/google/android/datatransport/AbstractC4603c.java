package com.google.android.datatransport;

import com.google.auto.value.AutoValue;
@AutoValue
/* renamed from: com.google.android.datatransport.c */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/c.class */
public abstract class AbstractC4603c<T> {
    /* renamed from: d */
    public static <T> AbstractC4603c<T> m22179d(T t) {
        return new C4601a(null, t, Priority.VERY_LOW);
    }

    /* renamed from: e */
    public static <T> AbstractC4603c<T> m22178e(T t) {
        return new C4601a(null, t, Priority.HIGHEST);
    }

    /* renamed from: a */
    public abstract Integer mo22182a();

    /* renamed from: b */
    public abstract T mo22181b();

    /* renamed from: c */
    public abstract Priority mo22180c();
}
