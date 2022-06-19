package p272w2;

import p161l9.AbstractC3541a;
/* renamed from: w2.a */
/* loaded from: classes-dex2jar.jar:w2/a.class */
public final class C4733a<T> implements AbstractC3541a<T> {

    /* renamed from: c */
    public static final Object f14597c = new Object();

    /* renamed from: a */
    public volatile AbstractC3541a<T> f14598a;

    /* renamed from: b */
    public volatile Object f14599b = f14597c;

    public C4733a(AbstractC3541a<T> abstractC3541a) {
        this.f14598a = abstractC3541a;
    }

    /* renamed from: a */
    public static Object m537a(Object obj, Object obj2) {
        if (!(obj != f14597c) || obj == obj2) {
            return obj2;
        }
        throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj + " & " + obj2 + ". This is likely due to a circular dependency.");
    }

    @Override // p161l9.AbstractC3541a
    public T get() {
        Object obj = this.f14599b;
        Object obj2 = f14597c;
        T t = obj;
        if (obj == obj2) {
            synchronized (this) {
                Object obj3 = this.f14599b;
                t = obj3;
                if (obj3 == obj2) {
                    t = this.f14598a.get();
                    m537a(this.f14599b, t);
                    this.f14599b = t;
                    this.f14598a = null;
                }
            }
        }
        return (T) t;
    }
}
