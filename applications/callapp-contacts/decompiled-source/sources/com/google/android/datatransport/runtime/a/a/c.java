package com.google.android.datatransport.runtime.a.a;
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/a/a/c.class */
public final class c<T> implements b<T> {

    /* renamed from: a  reason: collision with root package name */
    private static final c<Object> f20397a = new c<>(null);

    /* renamed from: b  reason: collision with root package name */
    private final T f20398b;

    private c(T t) {
        this.f20398b = t;
    }

    public static <T> b<T> a(T t) {
        return new c(e.a(t, "instance cannot be null"));
    }

    @Override // javax.a.a
    public final T a() {
        return this.f20398b;
    }
}
