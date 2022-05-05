package com.privacystar.core.util.model;

import android.support.annotation.NonNull;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/model/CheckedLazy.class */
public final class CheckedLazy<T> implements Lazy<T> {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final Object UNINITIALIZED = new Object();
    private volatile Object instance = UNINITIALIZED;
    private final LazyProvider<T> provider;

    private CheckedLazy(LazyProvider<T> lazyProvider) {
        this.provider = lazyProvider;
    }

    @NonNull
    public static <T> Lazy<T> create(@NonNull LazyProvider<T> lazyProvider) {
        return new CheckedLazy(lazyProvider);
    }

    public boolean checked() {
        if (this.instance != UNINITIALIZED) {
            return true;
        }
        synchronized (this) {
            return this.instance != UNINITIALIZED;
        }
    }

    @Override // com.privacystar.core.util.model.Lazy
    public T get() {
        Object obj = this.instance;
        T t = (T) obj;
        if (obj == UNINITIALIZED) {
            synchronized (this) {
                Object obj2 = this.instance;
                t = obj2;
                if (obj2 == UNINITIALIZED) {
                    t = this.provider.get();
                    this.instance = t;
                }
            }
        }
        return t;
    }

    public void getLazy(LazyProviderListener<T> lazyProviderListener) {
        if (this.instance == UNINITIALIZED) {
            synchronized (this) {
                if (this.instance == UNINITIALIZED) {
                    this.provider.getLazy(lazyProviderListener);
                }
            }
        }
    }
}
