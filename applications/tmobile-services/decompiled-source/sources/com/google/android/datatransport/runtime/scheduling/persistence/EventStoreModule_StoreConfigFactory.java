package com.google.android.datatransport.runtime.scheduling.persistence;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/persistence/EventStoreModule_StoreConfigFactory.class */
public final class EventStoreModule_StoreConfigFactory implements Factory<EventStoreConfig> {

    /* renamed from: a */
    private static final EventStoreModule_StoreConfigFactory f6784a = new EventStoreModule_StoreConfigFactory();

    /* renamed from: a */
    public static EventStoreModule_StoreConfigFactory m15282a() {
        return f6784a;
    }

    /* renamed from: c */
    public static EventStoreConfig m15280c() {
        EventStoreConfig c = EventStoreModule.m15289c();
        Preconditions.m4632c(c, "Cannot return null from a non-@Nullable @Provides method");
        return c;
    }

    /* renamed from: b */
    public EventStoreConfig get() {
        return m15280c();
    }
}
