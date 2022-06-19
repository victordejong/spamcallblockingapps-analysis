package com.google.android.datatransport.runtime.p316a.p317a;
/* renamed from: com.google.android.datatransport.runtime.a.a.c */
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/a/a/c.class */
public final class C10686c<T> implements AbstractC10685b<T> {

    /* renamed from: a */
    private static final C10686c<Object> f34533a = new C10686c<>(null);

    /* renamed from: b */
    private final T f34534b;

    private C10686c(T t) {
        this.f34534b = t;
    }

    /* renamed from: a */
    public static <T> AbstractC10685b<T> m22521a(T t) {
        return new C10686c(C10688e.m22519a(t, "instance cannot be null"));
    }

    @Override // javax.p517a.AbstractC18213a
    /* renamed from: a */
    public final T mo4304a() {
        return this.f34534b;
    }
}
