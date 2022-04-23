package dagger.internal;

import java.lang.ref.WeakReference;
import javax.inject.Provider;
@GwtIncompatible
/* loaded from: classes2-dex2jar.jar:dagger/internal/ReferenceReleasingProvider.class */
public final class ReferenceReleasingProvider<T> implements Provider<T> {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final Object NULL = new Object();
    private final Provider<T> provider;
    private volatile Object strongReference;
    private volatile WeakReference<T> weakReference;

    private ReferenceReleasingProvider(Provider<T> provider) {
        this.provider = provider;
    }

    public static <T> ReferenceReleasingProvider<T> create(Provider<T> provider, ReferenceReleasingProviderManager referenceReleasingProviderManager) {
        ReferenceReleasingProvider<T> referenceReleasingProvider = new ReferenceReleasingProvider<>((Provider) Preconditions.checkNotNull(provider));
        referenceReleasingProviderManager.addProvider(referenceReleasingProvider);
        return referenceReleasingProvider;
    }

    private Object currentValue() {
        Object obj = this.strongReference;
        if (obj != null) {
            return obj;
        }
        if (this.weakReference != null) {
            return this.weakReference.get();
        }
        return null;
    }

    @Override // javax.inject.Provider
    public T get() {
        Object currentValue = currentValue();
        Object obj = currentValue;
        if (currentValue == null) {
            synchronized (this) {
                Object currentValue2 = currentValue();
                obj = currentValue2;
                if (currentValue2 == null) {
                    T t = this.provider.get();
                    obj = t;
                    if (t == null) {
                        obj = NULL;
                    }
                    this.strongReference = obj;
                }
            }
        }
        T t2 = (T) obj;
        if (obj == NULL) {
            t2 = null;
        }
        return t2;
    }

    public void releaseStrongReference() {
        Object obj = this.strongReference;
        if (obj != null && obj != NULL) {
            synchronized (this) {
                this.weakReference = new WeakReference<>(obj);
                this.strongReference = null;
            }
        }
    }

    public void restoreStrongReference() {
        T t;
        Object obj = this.strongReference;
        if (this.weakReference != null && obj == null) {
            synchronized (this) {
                Object obj2 = this.strongReference;
                if (!(this.weakReference == null || obj2 != null || (t = this.weakReference.get()) == null)) {
                    this.strongReference = t;
                    this.weakReference = null;
                }
            }
        }
    }
}
