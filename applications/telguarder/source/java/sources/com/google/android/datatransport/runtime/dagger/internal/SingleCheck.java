package com.google.android.datatransport.runtime.dagger.internal;

import javax.inject.Provider;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/dagger/internal/SingleCheck.class */
public final class SingleCheck<T> implements Provider<T> {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final Object UNINITIALIZED = new Object();
    private volatile Object instance = UNINITIALIZED;
    private volatile Provider<T> provider;

    private SingleCheck(Provider<T> provider) {
        this.provider = provider;
    }

    public static <P extends Provider<T>, T> Provider<T> provider(P p) {
        return ((p instanceof SingleCheck) || (p instanceof DoubleCheck)) ? p : new SingleCheck((Provider) Preconditions.checkNotNull(p));
    }

    @Override // javax.inject.Provider
    public T get() {
        Object obj = this.instance;
        T t = obj;
        if (obj == UNINITIALIZED) {
            Provider<T> provider = this.provider;
            if (provider == null) {
                t = this.instance;
            } else {
                t = provider.get();
                this.instance = t;
                this.provider = null;
            }
        }
        return (T) t;
    }
}
