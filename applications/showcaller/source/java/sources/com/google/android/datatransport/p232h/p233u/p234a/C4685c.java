package com.google.android.datatransport.p232h.p233u.p234a;
/* renamed from: com.google.android.datatransport.h.u.a.c */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/h/u/a/c.class */
public final class C4685c<T> implements AbstractC4684b<T> {

    /* renamed from: a */
    private static final C4685c<Object> f14258a = new C4685c<>(null);

    /* renamed from: b */
    private final T f14259b;

    private C4685c(T t) {
        this.f14259b = t;
    }

    /* renamed from: a */
    public static <T> AbstractC4684b<T> m21997a(T t) {
        return new C4685c(C4686d.m21994c(t, "instance cannot be null"));
    }

    @Override // p328e.p329a.AbstractC9476a
    public T get() {
        return this.f14259b;
    }
}
