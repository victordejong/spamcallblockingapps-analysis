package dagger.internal;

import dagger.Lazy;
import javax.inject.Provider;
/* loaded from: classes-dex2jar.jar:dagger/internal/ProviderOfLazy.class */
public final class ProviderOfLazy<T> implements Provider<Lazy<T>> {

    /* renamed from: a */
    private final Provider<T> f14946a;

    /* renamed from: a */
    public Lazy<T> get() {
        return DoubleCheck.m4640a(this.f14946a);
    }
}
