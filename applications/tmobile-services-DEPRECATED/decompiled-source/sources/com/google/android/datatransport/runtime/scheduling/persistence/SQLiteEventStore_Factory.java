package com.google.android.datatransport.runtime.scheduling.persistence;

import com.google.android.datatransport.runtime.time.Clock;
import dagger.internal.Factory;
import javax.inject.Provider;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore_Factory.class */
public final class SQLiteEventStore_Factory implements Factory<SQLiteEventStore> {

    /* renamed from: a */
    private final Provider<Clock> f6817a;

    /* renamed from: b */
    private final Provider<Clock> f6818b;

    /* renamed from: c */
    private final Provider<EventStoreConfig> f6819c;

    /* renamed from: d */
    private final Provider<SchemaManager> f6820d;

    public SQLiteEventStore_Factory(Provider<Clock> provider, Provider<Clock> provider2, Provider<EventStoreConfig> provider3, Provider<SchemaManager> provider4) {
        this.f6817a = provider;
        this.f6818b = provider2;
        this.f6819c = provider3;
        this.f6820d = provider4;
    }

    /* renamed from: a */
    public static SQLiteEventStore_Factory m15213a(Provider<Clock> provider, Provider<Clock> provider2, Provider<EventStoreConfig> provider3, Provider<SchemaManager> provider4) {
        return new SQLiteEventStore_Factory(provider, provider2, provider3, provider4);
    }

    /* renamed from: b */
    public SQLiteEventStore get() {
        return new SQLiteEventStore(this.f6817a.get(), this.f6818b.get(), this.f6819c.get(), this.f6820d.get());
    }
}
