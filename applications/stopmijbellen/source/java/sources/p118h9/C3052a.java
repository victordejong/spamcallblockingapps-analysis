package p118h9;

import p161l9.AbstractC3541a;
/* renamed from: h9.a */
/* loaded from: classes2-dex2jar.jar:h9/a.class */
public final class C3052a<T> implements AbstractC3541a<T> {

    /* renamed from: c */
    public static final Object f10385c = new Object();

    /* renamed from: a */
    public volatile AbstractC3541a<T> f10386a;

    /* renamed from: b */
    public volatile Object f10387b = f10385c;

    public C3052a(AbstractC3541a<T> abstractC3541a) {
        this.f10386a = abstractC3541a;
    }

    /* renamed from: a */
    public static Object m2673a(Object obj, Object obj2) {
        if (!(obj != f10385c) || obj == obj2) {
            return obj2;
        }
        throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj + " & " + obj2 + ". This is likely due to a circular dependency.");
    }

    @Override // p161l9.AbstractC3541a
    public T get() {
        Object obj = this.f10387b;
        Object obj2 = f10385c;
        T t = obj;
        if (obj == obj2) {
            synchronized (this) {
                Object obj3 = this.f10387b;
                t = obj3;
                if (obj3 == obj2) {
                    t = this.f10386a.get();
                    m2673a(this.f10387b, t);
                    this.f10387b = t;
                    this.f10386a = null;
                }
            }
        }
        return (T) t;
    }
}
