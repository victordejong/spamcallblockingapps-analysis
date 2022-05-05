package com.google.android.datatransport.runtime.backends;

import android.content.Context;
import dagger.internal.Factory;
import javax.inject.Provider;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/backends/MetadataBackendRegistry_Factory.class */
public final class MetadataBackendRegistry_Factory implements Factory<MetadataBackendRegistry> {

    /* renamed from: a */
    private final Provider<Context> f6683a;

    /* renamed from: b */
    private final Provider<CreationContextFactory> f6684b;

    public MetadataBackendRegistry_Factory(Provider<Context> provider, Provider<CreationContextFactory> provider2) {
        this.f6683a = provider;
        this.f6684b = provider2;
    }

    /* renamed from: a */
    public static MetadataBackendRegistry_Factory m15380a(Provider<Context> provider, Provider<CreationContextFactory> provider2) {
        return new MetadataBackendRegistry_Factory(provider, provider2);
    }

    /* renamed from: b */
    public MetadataBackendRegistry get() {
        return new MetadataBackendRegistry(this.f6683a.get(), this.f6684b.get());
    }
}
