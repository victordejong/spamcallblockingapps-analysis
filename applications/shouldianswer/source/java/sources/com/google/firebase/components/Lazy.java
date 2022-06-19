package com.google.firebase.components;

import com.google.firebase.inject.Provider;
/* loaded from: classes-dex2jar.jar:com/google/firebase/components/Lazy.class */
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
        T t = obj;
        if (obj == UNINITIALIZED) {
            synchronized (this) {
                Object obj2 = this.instance;
                t = obj2;
                if (obj2 == UNINITIALIZED) {
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
