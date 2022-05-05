package p456i.p457c;

import javax.inject.Provider;
/* renamed from: i.c.d */
/* loaded from: classes2-dex2jar.jar:i/c/d.class */
public final class C10868d<T> implements Provider<T> {

    /* renamed from: c */
    public static final Object f24825c = new Object();

    /* renamed from: a */
    public volatile Provider<T> f24826a;

    /* renamed from: b */
    public volatile Object f24827b = f24825c;

    public C10868d(Provider<T> provider) {
        this.f24826a = provider;
    }

    /* renamed from: a */
    public static <P extends Provider<T>, T> Provider<T> m10382a(P p) {
        if ((p instanceof C10868d) || (p instanceof C10865a)) {
            return p;
        }
        C10867c.m10385a(p);
        return new C10868d(p);
    }

    @Override // javax.inject.Provider
    public T get() {
        Object obj = this.f24827b;
        T t = (T) obj;
        if (obj == f24825c) {
            Provider<T> provider = this.f24826a;
            if (provider == null) {
                t = (T) this.f24827b;
            } else {
                t = provider.get();
                this.f24827b = t;
                this.f24826a = null;
            }
        }
        return t;
    }
}
