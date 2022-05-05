package com.privacystar.core.util.model;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/model/LazyProvider.class */
public interface LazyProvider<T> {
    T get();

    void getLazy(LazyProviderListener<T> lazyProviderListener);
}
