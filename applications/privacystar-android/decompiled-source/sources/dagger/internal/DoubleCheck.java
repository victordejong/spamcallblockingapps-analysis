package dagger.internal;

import dagger.Lazy;
import javax.inject.Provider;
/* loaded from: classes2-dex2jar.jar:dagger/internal/DoubleCheck.class */
public final class DoubleCheck<T> implements Provider<T>, Lazy<T> {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final Object UNINITIALIZED = new Object();
    private volatile Object instance = UNINITIALIZED;
    private volatile Provider<T> provider;

    private DoubleCheck(Provider<T> provider) {
        this.provider = provider;
    }

    public static <T> Lazy<T> lazy(Provider<T> provider) {
        return provider instanceof Lazy ? (Lazy) provider : new DoubleCheck((Provider) Preconditions.checkNotNull(provider));
    }

    public static <T> Provider<T> provider(Provider<T> provider) {
        Preconditions.checkNotNull(provider);
        return provider instanceof DoubleCheck ? provider : new DoubleCheck(provider);
    }

    @Override // javax.inject.Provider
    public T get() {
        Object obj = this.instance;
        T t = (T) obj;
        if (obj == UNINITIALIZED) {
            synchronized (this) {
                Object obj2 = this.instance;
                t = obj2;
                if (obj2 == UNINITIALIZED) {
                    t = this.provider.get();
                    Object obj3 = this.instance;
                    if (obj3 == UNINITIALIZED || obj3 == t) {
                        this.instance = t;
                        this.provider = null;
                    } else {
                        throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj3 + " & " + t + ". This is likely due to a circular dependency.");
                    }
                }
            }
        }
        return t;
    }
}
