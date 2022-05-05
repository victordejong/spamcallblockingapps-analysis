package dagger.internal;

import javax.inject.Provider;
/* loaded from: classes-dex2jar.jar:dagger/internal/SingleCheck.class */
public final class SingleCheck<T> implements Provider<T> {

    /* renamed from: c */
    private static final Object f14949c = new Object();

    /* renamed from: a */
    private volatile Provider<T> f14950a;

    /* renamed from: b */
    private volatile Object f14951b;

    @Override // javax.inject.Provider
    public T get() {
        Object obj = this.f14951b;
        T t = (T) obj;
        if (obj == f14949c) {
            Provider<T> provider = this.f14950a;
            if (provider == null) {
                t = (T) this.f14951b;
            } else {
                t = provider.get();
                this.f14951b = t;
                this.f14950a = null;
            }
        }
        return t;
    }
}
