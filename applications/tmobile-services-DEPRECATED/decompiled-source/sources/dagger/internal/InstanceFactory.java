package dagger.internal;

import dagger.Lazy;
/* loaded from: classes-dex2jar.jar:dagger/internal/InstanceFactory.class */
public final class InstanceFactory<T> implements Factory<T>, Lazy<T> {

    /* renamed from: a */
    private final T f14945a;

    private InstanceFactory(T t) {
        this.f14945a = t;
    }

    /* renamed from: a */
    public static <T> Factory<T> m4637a(T t) {
        Preconditions.m4632c(t, "instance cannot be null");
        return new InstanceFactory(t);
    }

    @Override // javax.inject.Provider
    public T get() {
        return this.f14945a;
    }
}
