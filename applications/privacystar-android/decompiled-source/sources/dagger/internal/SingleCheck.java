package dagger.internal;

import dagger.Lazy;
import javax.inject.Provider;
/* loaded from: classes2-dex2jar.jar:dagger/internal/SingleCheck.class */
public final class SingleCheck<T> implements Provider<T>, Lazy<T> {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final Object UNINITIALIZED = new Object();
    private volatile Object instance = UNINITIALIZED;
    private volatile Provider<T> provider;

    private SingleCheck(Provider<T> provider) {
        this.provider = provider;
    }

    public static <T> Provider<T> provider(Provider<T> provider) {
        return ((provider instanceof SingleCheck) || (provider instanceof DoubleCheck)) ? provider : new SingleCheck((Provider) Preconditions.checkNotNull(provider));
    }

    @Override // javax.inject.Provider
    public T get() {
        Provider<T> provider = this.provider;
        if (this.instance == UNINITIALIZED) {
            this.instance = provider.get();
            this.provider = null;
        }
        return (T) this.instance;
    }
}
