package com.google.android.datatransport.runtime.scheduling.persistence;

import dagger.internal.Factory;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/persistence/EventStoreModule_SchemaVersionFactory.class */
public final class EventStoreModule_SchemaVersionFactory implements Factory<Integer> {

    /* renamed from: a */
    private static final EventStoreModule_SchemaVersionFactory f6783a = new EventStoreModule_SchemaVersionFactory();

    /* renamed from: a */
    public static EventStoreModule_SchemaVersionFactory m15285a() {
        return f6783a;
    }

    /* renamed from: c */
    public static int m15283c() {
        return EventStoreModule.m15290b();
    }

    /* renamed from: b */
    public Integer get() {
        return Integer.valueOf(m15283c());
    }
}
