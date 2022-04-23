package com.google.android.datatransport.runtime.scheduling.persistence;

import android.content.Context;
import dagger.internal.Factory;
import javax.inject.Provider;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/persistence/SchemaManager_Factory.class */
public final class SchemaManager_Factory implements Factory<SchemaManager> {

    /* renamed from: a */
    private final Provider<Context> f6833a;

    /* renamed from: b */
    private final Provider<String> f6834b;

    /* renamed from: c */
    private final Provider<Integer> f6835c;

    public SchemaManager_Factory(Provider<Context> provider, Provider<String> provider2, Provider<Integer> provider3) {
        this.f6833a = provider;
        this.f6834b = provider2;
        this.f6835c = provider3;
    }

    /* renamed from: a */
    public static SchemaManager_Factory m15199a(Provider<Context> provider, Provider<String> provider2, Provider<Integer> provider3) {
        return new SchemaManager_Factory(provider, provider2, provider3);
    }

    /* renamed from: b */
    public SchemaManager get() {
        return new SchemaManager(this.f6833a.get(), this.f6834b.get(), this.f6835c.get().intValue());
    }
}
