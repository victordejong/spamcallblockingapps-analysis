package com.google.firebase.components;

import com.google.firebase.inject.Provider;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/components/Lazy.class */
public class Lazy<T> implements Provider<T> {
    private static final Object UNINITIALIZED = new Object();
    private volatile Object instance;
    private volatile Provider<T> provider;

    public Lazy(Provider<T> provider) {
        this.instance = UNINITIALIZED;
        this.provider = provider;
    }

    Lazy(T t) {
        this.instance = UNINITIALIZED;
        this.instance = t;
    }

    @Override // com.google.firebase.inject.Provider
    public T get() {
        Object obj = this.instance;
        Object obj2 = UNINITIALIZED;
        T t = obj;
        if (obj == obj2) {
            synchronized (this) {
                Object obj3 = this.instance;
                t = obj3;
                if (obj3 == obj2) {
                    t = this.provider.get();
                    this.instance = t;
                    this.provider = null;
                }
            }
        }
        return (T) t;
    }

    boolean isInitialized() {
        return this.instance != UNINITIALIZED;
    }
}
