package com.google.android.datatransport.runtime.p316a.p317a;

import javax.p517a.AbstractC18213a;
/* renamed from: com.google.android.datatransport.runtime.a.a.a */
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/a/a/a.class */
public final class C10684a<T> implements AbstractC18213a<T> {

    /* renamed from: a */
    static final /* synthetic */ boolean f34529a = true;

    /* renamed from: b */
    private static final Object f34530b = new Object();

    /* renamed from: c */
    private volatile AbstractC18213a<T> f34531c;

    /* renamed from: d */
    private volatile Object f34532d = f34530b;

    private C10684a(AbstractC18213a<T> abstractC18213a) {
        if (f34529a || abstractC18213a != null) {
            this.f34531c = abstractC18213a;
            return;
        }
        throw new AssertionError();
    }

    /* renamed from: a */
    public static <P extends AbstractC18213a<T>, T> AbstractC18213a<T> m22522a(P p) {
        C10688e.m22520a(p);
        return p instanceof C10684a ? p : new C10684a(p);
    }

    @Override // javax.p517a.AbstractC18213a
    /* renamed from: a */
    public final T mo4304a() {
        Object obj = this.f34532d;
        Object obj2 = f34530b;
        T t = obj;
        if (obj == obj2) {
            synchronized (this) {
                Object obj3 = this.f34532d;
                t = obj3;
                if (obj3 == obj2) {
                    t = this.f34531c.mo4304a();
                    Object obj4 = this.f34532d;
                    if ((obj4 != obj2 && !(obj4 instanceof C10687d)) && obj4 != t) {
                        throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj4 + " & " + t + ". This is likely due to a circular dependency.");
                    }
                    this.f34532d = t;
                    this.f34531c = null;
                }
            }
        }
        return (T) t;
    }
}
