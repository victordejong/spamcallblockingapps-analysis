package com.google.android.datatransport.p232h.p233u.p234a;

import p328e.p329a.AbstractC9476a;
/* renamed from: com.google.android.datatransport.h.u.a.a */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/h/u/a/a.class */
public final class C4683a<T> implements AbstractC9476a<T> {

    /* renamed from: a */
    private static final Object f14255a = new Object();

    /* renamed from: b */
    private volatile AbstractC9476a<T> f14256b;

    /* renamed from: c */
    private volatile Object f14257c = f14255a;

    private C4683a(AbstractC9476a<T> abstractC9476a) {
        this.f14256b = abstractC9476a;
    }

    /* renamed from: a */
    public static <P extends AbstractC9476a<T>, T> AbstractC9476a<T> m21999a(P p) {
        C4686d.m21995b(p);
        return p instanceof C4683a ? p : new C4683a(p);
    }

    /* renamed from: b */
    public static Object m21998b(Object obj, Object obj2) {
        if (!(obj != f14255a) || obj == obj2) {
            return obj2;
        }
        throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj + " & " + obj2 + ". This is likely due to a circular dependency.");
    }

    @Override // p328e.p329a.AbstractC9476a
    public T get() {
        Object obj = this.f14257c;
        Object obj2 = f14255a;
        T t = obj;
        if (obj == obj2) {
            synchronized (this) {
                Object obj3 = this.f14257c;
                t = obj3;
                if (obj3 == obj2) {
                    t = this.f14256b.get();
                    this.f14257c = m21998b(this.f14257c, t);
                    this.f14256b = null;
                }
            }
        }
        return (T) t;
    }
}
