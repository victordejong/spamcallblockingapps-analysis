package p081h.p203i.p204a.p206b.p209j.p213v.p214b;

import javax.inject.Provider;
import p081h.p203i.p204a.p206b.p209j.p213v.AbstractC6608a;
/* renamed from: h.i.a.b.j.v.b.a */
/* loaded from: classes2-dex2jar.jar:h/i/a/b/j/v/b/a.class */
public final class C6609a<T> implements Provider<T>, AbstractC6608a<T> {

    /* renamed from: c */
    public static final Object f16423c = new Object();

    /* renamed from: a */
    public volatile Provider<T> f16424a;

    /* renamed from: b */
    public volatile Object f16425b = f16423c;

    public C6609a(Provider<T> provider) {
        this.f16424a = provider;
    }

    /* renamed from: a */
    public static Object m22243a(Object obj, Object obj2) {
        if (!(obj != f16423c) || obj == obj2) {
            return obj2;
        }
        throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj + " & " + obj2 + ". This is likely due to a circular dependency.");
    }

    /* renamed from: a */
    public static <P extends Provider<T>, T> Provider<T> m22242a(P p) {
        C6612d.m22240a(p);
        return p instanceof C6609a ? p : new C6609a(p);
    }

    @Override // javax.inject.Provider
    public T get() {
        Object obj = this.f16425b;
        T t = (T) obj;
        if (obj == f16423c) {
            synchronized (this) {
                Object obj2 = this.f16425b;
                t = obj2;
                if (obj2 == f16423c) {
                    t = this.f16424a.get();
                    m22243a(this.f16425b, t);
                    this.f16425b = t;
                    this.f16424a = null;
                }
            }
        }
        return t;
    }
}
