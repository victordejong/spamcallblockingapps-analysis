package com.google.android.datatransport.runtime.backends;

import android.content.Context;
import com.google.android.datatransport.runtime.time.Clock;
import dagger.internal.Factory;
import javax.inject.Provider;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/backends/CreationContextFactory_Factory.class */
public final class CreationContextFactory_Factory implements Factory<CreationContextFactory> {

    /* renamed from: a */
    private final Provider<Context> f6675a;

    /* renamed from: b */
    private final Provider<Clock> f6676b;

    /* renamed from: c */
    private final Provider<Clock> f6677c;

    public CreationContextFactory_Factory(Provider<Context> provider, Provider<Clock> provider2, Provider<Clock> provider3) {
        this.f6675a = provider;
        this.f6676b = provider2;
        this.f6677c = provider3;
    }

    /* renamed from: a */
    public static CreationContextFactory_Factory m15386a(Provider<Context> provider, Provider<Clock> provider2, Provider<Clock> provider3) {
        return new CreationContextFactory_Factory(provider, provider2, provider3);
    }

    /* renamed from: b */
    public CreationContextFactory get() {
        return new CreationContextFactory(this.f6675a.get(), this.f6676b.get(), this.f6677c.get());
    }
}
