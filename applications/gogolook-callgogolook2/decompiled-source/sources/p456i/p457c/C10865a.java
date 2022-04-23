package p456i.p457c;

import javax.inject.Provider;
import p456i.AbstractC10863a;
/* renamed from: i.c.a */
/* loaded from: classes2-dex2jar.jar:i/c/a.class */
public final class C10865a<T> implements Provider<T>, AbstractC10863a<T> {

    /* renamed from: c */
    public static final Object f24822c = new Object();

    /* renamed from: a */
    public volatile Provider<T> f24823a;

    /* renamed from: b */
    public volatile Object f24824b = f24822c;

    public C10865a(Provider<T> provider) {
        this.f24823a = provider;
    }

    /* renamed from: a */
    public static Object m10387a(Object obj, Object obj2) {
        if (!(obj != f24822c) || obj == obj2) {
            return obj2;
        }
        throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj + " & " + obj2 + ". This is likely due to a circular dependency.");
    }

    /* renamed from: a */
    public static <P extends Provider<T>, T> Provider<T> m10386a(P p) {
        C10867c.m10385a(p);
        return p instanceof C10865a ? p : new C10865a(p);
    }

    @Override // javax.inject.Provider
    public T get() {
        Object obj = this.f24824b;
        T t = (T) obj;
        if (obj == f24822c) {
            synchronized (this) {
                Object obj2 = this.f24824b;
                t = obj2;
                if (obj2 == f24822c) {
                    t = this.f24823a.get();
                    m10387a(this.f24824b, t);
                    this.f24824b = t;
                    this.f24823a = null;
                }
            }
        }
        return t;
    }
}
